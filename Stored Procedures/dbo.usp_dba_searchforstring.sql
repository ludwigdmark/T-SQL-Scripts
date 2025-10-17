CREATE OR ALTER PROCEDURE usp_dba_searchforstring 
	@search_string NVARCHAR(MAX)
AS
BEGIN

	DROP TABLE IF EXISTS #search_results
	CREATE TABLE #search_results (
		id INT IDENTITY(1, 1)
		, search_id INT
		, schema_name SYSNAME
		, table_name SYSNAME
		, column_name SYSNAME
		, row_data NVARCHAR(MAX)
		, search_string NVARCHAR(MAX)
		, match_string NVARCHAR(MAX)
		, result_found_at DATETIME DEFAULT SYSDATETIME()
	)

	DECLARE @searches TABLE (
		id INT IDENTITY(1, 1)
		, schema_name SYSNAME
		, table_name SYSNAME
		, column_name SYSNAME
		, column_list NVARCHAR(MAX)
		, search_string NVARCHAR(MAX)
		, execution_duration INT
		, error_message NVARCHAR(MAX)
	)

	DECLARE @search_template NVARCHAR(MAX) = '
	;WITH search_table AS (
		SELECT search_row_id = ROW_NUMBER() OVER (ORDER BY (SELECT 1))
			, *
		FROM "${schema_name}"."${table_name}"
		WITH (NOLOCK)
	)
	INSERT INTO #search_results (schema_name, table_name, column_name, row_data, search_string, match_string)
	SELECT schema_name = ''${schema_name}'' 
		, table_name = ''${table_name}''
		, column_name = ''${column_name}''
		, row_data = (
			SELECT ${column_list}
			FROM search_table I
			WHERE I.search_row_id = O.search_row_id
			FOR JSON AUTO
		)
		, search_string = ''${search_string}''
		, match_string = "${column_name}"
	FROM search_table O WHERE "${column_name}" LIKE CONCAT(''%'', ''${search_string}'', ''%'')'

	;WITH searches AS (
		SELECT schema_name = s.name
			, table_name = t.name
			, column_name = c.name
			, column_list = (
				SELECT STRING_AGG(QUOTENAME(ic.name, '"'), ', ')
				FROM sys.columns ic
				JOIN sys.types iy ON iy.user_type_id = ic.user_type_id
				WHERE ic.object_id = t.object_id
					AND iy.is_assembly_type = 0
			)
		FROM sys.schemas s
		JOIN sys.tables t ON t.schema_id = s.schema_id
		JOIN sys.columns c ON c.object_id = t.object_id
		JOIN sys.types y ON y.user_type_id = c.user_type_id
		WHERE y.collation_name IS NOT NULL
	)
	INSERT INTO @searches
	SELECT *
		, search_string = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
			@search_template
			, '${schema_name}', schema_name)
			, '${table_name}', table_name)
			, '${column_name}', column_name)
			, '${search_string}', @search_string)
			, '${column_list}', column_list)
		, NULL
		, NULL
	FROM searches

	DECLARE @search_id INT;
	DECLARE @search_sql NVARCHAR(MAX);
	DECLARE @start_time DATETIME;

	DECLARE search_cursor CURSOR FOR
	SELECT id, search_string, SYSDATETIME()
	FROM @searches

	OPEN search_cursor;

	FETCH NEXT FROM search_cursor INTO @search_id, @search_sql, @start_time;

	WHILE @@FETCH_STATUS = 0
	BEGIN

		BEGIN TRY
			EXEC (@search_sql)
			UPDATE @searches
			SET execution_duration = DATEDIFF(MILLISECOND, @start_time, SYSDATETIME())
			WHERE id = @search_id
		END TRY
		BEGIN CATCH
			UPDATE @searches
			SET execution_duration = DATEDIFF(MILLISECOND, @start_time, SYSDATETIME())
				, error_message = ERROR_MESSAGE()
			WHERE id = @search_id
		END CATCH
		UPDATE #search_results SET search_id = @search_id WHERE search_id IS NULL
	
		FETCH NEXT FROM search_cursor INTO @search_id, @search_sql, @start_time;
	END

	CLOSE search_cursor;
	DEALLOCATE search_cursor;

	SELECT sr.schema_name
		, sr.table_name
		, sr.column_name
		, sr.row_data
		, sr.search_string
		, sr.match_string
		, sr.result_found_at
		, s.execution_duration
		, s.error_message
	FROM #search_results sr
	JOIN @searches s ON s.id = sr.search_id

	DROP TABLE IF EXISTS #search_results

END
GO