# T-SQL Scripts

A comprehensive collection of T-SQL stored procedures, functions, and views for database administration and utility operations.

## Project Structure

### Scalar-valued Functions

#### Array Operations
- [`dbo.udf_array_count`](Scalar-valued%20Functions/dbo.udf_array_count.sql) - Counts elements in a delimited string array
- [`dbo.udf_array_exclude`](Scalar-valued%20Functions/dbo.udf_array_exclude.sql) - Removes specified elements from an array
- [`dbo.udf_array_extract`](Scalar-valued%20Functions/dbo.udf_array_extract.sql) - Extracts elements from an array based on a pattern
- [`dbo.udf_array_first`](Scalar-valued%20Functions/dbo.udf_array_first.sql) - Returns the first element of an array
- [`dbo.udf_array_include`](Scalar-valued%20Functions/dbo.udf_array_include.sql) - Adds elements to an array
- [`dbo.udf_array_last`](Scalar-valued%20Functions/dbo.udf_array_last.sql) - Returns the last element of an array
- [`dbo.udf_array_sort`](Scalar-valued%20Functions/dbo.udf_array_sort.sql) - Sorts elements in an array
- [`dbo.udf_array_splice`](Scalar-valued%20Functions/dbo.udf_array_splice.sql) - Removes or replaces elements in an array
- [`dbo.udf_array_unique_sort`](Scalar-valued%20Functions/dbo.udf_array_unique_sort.sql) - Sorts and removes duplicates from an array
- [`dbo.udf_array_unique`](Scalar-valued%20Functions/dbo.udf_array_unique.sql) - Removes duplicate elements from an array
- [`dbo.udf_arrayel_element`](Scalar-valued%20Functions/dbo.udf_arrayel_element.sql) - Extracts a specific element from an array

#### Database Administration
- [`dbo.udf_dba_defineobject`](Scalar-valued%20Functions/dbo.udf_dba_defineobject.sql) - Generates object definition scripts
- [`dbo.udf_dba_genjoinedquery`](Scalar-valued%20Functions/dbo.udf_dba_genjoinedquery.sql) - Generates JOIN queries based on table relationships
- [`dbo.udf_dba_objectfullname`](Scalar-valued%20Functions/dbo.udf_dba_objectfullname.sql) - Returns the fully qualified name of a database object
- [`dbo.udf_dba_pathfordbdata`](Scalar-valued%20Functions/dbo.udf_dba_pathfordbdata.sql) - Gets the data file path for a database
- [`dbo.udf_dba_pathfordblogs`](Scalar-valued%20Functions/dbo.udf_dba_pathfordblogs.sql) - Gets the log file path for a database

#### File System Operations
- [`dbo.udf_os_pathbasename`](Scalar-valued%20Functions/dbo.udf_os_pathbasename.sql) - Extracts the base name from a file path
- [`dbo.udf_os_pathdir`](Scalar-valued%20Functions/dbo.udf_os_pathdir.sql) - Gets the directory path from a file path
- [`dbo.udf_os_pathext`](Scalar-valued%20Functions/dbo.udf_os_pathext.sql) - Extracts the file extension from a path
- [`dbo.udf_os_pathfilename`](Scalar-valued%20Functions/dbo.udf_os_pathfilename.sql) - Gets the filename from a path
- [`dbo.udf_os_tempfile_ticks`](Scalar-valued%20Functions/dbo.udf_os_tempfile_ticks.sql) - Generates a temporary filename with ticks
- [`dbo.udf_os_tempfile`](Scalar-valued%20Functions/dbo.udf_os_tempfile.sql) - Generates a temporary filename
- [`dbo.udf_os_temppath`](Scalar-valued%20Functions/dbo.udf_os_temppath.sql) - Gets the system temporary path
- [`dbo.udf_os_writefile`](Scalar-valued%20Functions/dbo.udf_os_writefile.sql) - Writes content to a file

#### String and Formatting
- [`dbo.udf_format_json`](Scalar-valued%20Functions/dbo.udf_format_json.sql) - Formats JSON strings for readability
- [`dbo.udf_hex_diff`](Scalar-valued%20Functions/dbo.udf_hex_diff.sql) - Calculates the difference between hex values
- [`dbo.udf_string_randomname`](Scalar-valued%20Functions/dbo.udf_string_randomname.sql) - Generates a random string name
- [`dbo.udf_string_titlecase`](Scalar-valued%20Functions/dbo.udf_string_titlecase.sql) - Converts text to title case
- [`dbo.udf_string_urlfilename`](Scalar-valued%20Functions/dbo.udf_string_urlfilename.sql) - Extracts filename from a URL
- [`dbo.udf_string_urlquerystring`](Scalar-valued%20Functions/dbo.udf_string_urlquerystring.sql) - Extracts query string from a URL
- [`dbo.udf_validate_said`](Scalar-valued%20Functions/dbo.udf_validate_said.sql) - Validates South African ID numbers

### Stored Procedures

#### Database Administration
- [`dbo.usp_dba_backupandzipdatabases`](Stored%20Procedures/dbo.usp_dba_backupandzipdatabases.sql) - Backs up and compresses databases
- [`dbo.usp_dba_cloneuser`](Stored%20Procedures/dbo.usp_dba_cloneuser.sql) - Clones user permissions and roles
- [`dbo.usp_dba_createdsnlessmysqllinkedserver`](Stored%20Procedures/dbo.usp_dba_createdsnlessmysqllinkedserver.sql) - Creates MySQL linked server without DSN
- [`dbo.usp_dba_createlinkedserver`](Stored%20Procedures/dbo.usp_dba_createlinkedserver.sql) - Creates a linked server
- [`dbo.usp_dba_dbsizerecommendations`](Stored%20Procedures/dbo.usp_dba_dbsizerecommendations.sql) - Provides database size optimization recommendations
- [`dbo.usp_dba_deployaudittriggers`](Stored%20Procedures/dbo.usp_dba_deployaudittriggers.sql) - Deploys audit triggers on tables
- [`dbo.usp_dba_dropuserobject`](Stored%20Procedures/dbo.usp_dba_dropuserobject.sql) - Drops a specific user object
- [`dbo.usp_dba_dropuserobjects`](Stored%20Procedures/dbo.usp_dba_dropuserobjects.sql) - Drops multiple user objects
- [`dbo.usp_dba_findkeyrelationships`](Stored%20Procedures/dbo.usp_dba_findkeyrelationships.sql) - Finds relationships between tables
- [`dbo.usp_dba_fixdbfilelocations`](Stored%20Procedures/dbo.usp_dba_fixdbfilelocations.sql) - Fixes database file locations
- [`dbo.usp_dba_formatsqlapi`](Stored%20Procedures/dbo.usp_dba_formatsqlapi.sql) - Formats SQL API calls
- [`dbo.usp_dba_genjoinedquery`](Stored%20Procedures/dbo.usp_dba_genjoinedquery.sql) - Generates joined queries
- [`dbo.usp_dba_killallusers`](Stored%20Procedures/dbo.usp_dba_killallusers.sql) - Kills all user connections
- [`dbo.usp_dba_objectdefinitions`](Stored%20Procedures/dbo.usp_dba_objectdefinitions.sql) - Gets object definitions
- [`dbo.usp_dba_SMOscriptobject`](Stored%20Procedures/dbo.usp_dba_SMOscriptobject.sql) - Scripts objects using SMO

#### HTTP and File Operations
- [`dbo.usp_format_querytohtml`](Stored%20Procedures/dbo.usp_format_querytohtml.sql) - Formats query results as HTML
- [`dbo.usp_http_request`](Stored%20Procedures/dbo.usp_http_request.sql) - Makes HTTP requests
- [`dbo.usp_os_execcmd`](Stored%20Procedures/dbo.usp_os_execcmd.sql) - Executes command shell commands
- [`dbo.usp_os_execps`](Stored%20Procedures/dbo.usp_os_execps.sql) - Executes PowerShell commands
- [`dbo.usp_os_writefile_bcp`](Stored%20Procedures/dbo.usp_os_writefile_bcp.sql) - Writes data to file using BCP
- [`dbo.usp_os_writefile`](Stored%20Procedures/dbo.usp_os_writefile.sql) - Writes data to file
- [`dbo.usp_os_writetempfile`](Stored%20Procedures/dbo.usp_os_writetempfile.sql) - Writes data to temporary file

### Table-valued Functions
- [`dbo.udtf_hex_torgb`](Table-valued%20Functions/dbo.udtf_hex_torgb.sql) - Converts hex color to RGB values
- [`dbo.udtf_html_datatypes`](Table-valued%20Functions/dbo.udtf_html_datatypes.sql) - Returns HTML data types
- [`dbo.udtf_http_request`](Table-valued%20Functions/dbo.udtf_http_request.sql) - Makes HTTP requests returning result sets
- [`dbo.udtf_oa_readfile`](Table-valued%20Functions/dbo.udtf_oa_readfile.sql) - Reads file contents as result set
- [`dbo.udtf_parse_json`](Table-valued%20Functions/dbo.udtf_parse_json.sql) - Parses JSON into table format
- [`dbo.udtf_string_chars`](Table-valued%20Functions/dbo.udtf_string_chars.sql) - Splits string into character result set
- [`dbo.udtf_string_urlqueryparams`](Table-valued%20Functions/dbo.udtf_string_urlqueryparams.sql) - Parses URL query parameters

### Views
- [`dbo.vw_dba_brokenprocedures`](Views/dbo.vw_dba_brokenprocedures.sql) - Lists stored procedures with compilation errors
- [`dbo.vw_dba_columnnames`](Views/dbo.vw_dba_columnnames.sql) - Lists all column names across databases
- [`dbo.vw_dba_foreignkeys`](Views/dbo.vw_dba_foreignkeys.sql) - Shows foreign key relationships
- [`dbo.vw_dba_missingindexs`](Views/dbo.vw_dba_missingindexs.sql) - Identifies missing indexes

## Usage

Most functions and procedures include detailed headers with usage examples. Always check permissions before executing DBA operations, especially those requiring `sysadmin` or elevated permissions.

## Requirements

- SQL Server 2012 or later
- Some functions require `xp_cmdshell` for file system operations
- PowerShell access for certain administrative tasks
- Appropriate permissions for DBA operations

## Best Practices

1. Always use schema prefix (`dbo.`) when referencing objects
2. Check required permissions before executing DBA operations
3. Test file system operations in a safe environment first
4. Review procedure headers for specific requirements and examples
5. Follow SQL Server security best practices when enabling features like `xp_cmdshell`
