# T-SQL Scripts

A comprehensive collection of T-SQL stored procedures, functions, and views for database administration and utility operations.

## Project Structure

### Scalar-valued Functions

#### Array Operations
- `dbo.udf_array_count` - Counts elements in a delimited string array
- `dbo.udf_array_exclude` - Removes specified elements from an array
- `dbo.udf_array_extract` - Extracts elements from an array based on a pattern
- `dbo.udf_array_first` - Returns the first element of an array
- `dbo.udf_array_include` - Adds elements to an array
- `dbo.udf_array_last` - Returns the last element of an array
- `dbo.udf_array_sort` - Sorts elements in an array
- `dbo.udf_array_splice` - Removes or replaces elements in an array
- `dbo.udf_array_unique_sort` - Sorts and removes duplicates from an array
- `dbo.udf_array_unique` - Removes duplicate elements from an array
- `dbo.udf_arrayel_element` - Extracts a specific element from an array

#### Database Administration
- `dbo.udf_dba_defineobject` - Generates object definition scripts
- `dbo.udf_dba_genjoinedquery` - Generates JOIN queries based on table relationships
- `dbo.udf_dba_objectfullname` - Returns the fully qualified name of a database object
- `dbo.udf_dba_pathfordbdata` - Gets the data file path for a database
- `dbo.udf_dba_pathfordblogs` - Gets the log file path for a database

#### File System Operations
- `dbo.udf_os_pathbasename` - Extracts the base name from a file path
- `dbo.udf_os_pathdir` - Gets the directory path from a file path
- `dbo.udf_os_pathext` - Extracts the file extension from a path
- `dbo.udf_os_pathfilename` - Gets the filename from a path
- `dbo.udf_os_tempfile_ticks` - Generates a temporary filename with ticks
- `dbo.udf_os_tempfile` - Generates a temporary filename
- `dbo.udf_os_temppath` - Gets the system temporary path
- `dbo.udf_os_writefile` - Writes content to a file

#### String and Formatting
- `dbo.udf_format_json` - Formats JSON strings for readability
- `dbo.udf_hex_diff` - Calculates the difference between hex values
- `dbo.udf_string_randomname` - Generates a random string name
- `dbo.udf_string_titlecase` - Converts text to title case
- `dbo.udf_string_urlfilename` - Extracts filename from a URL
- `dbo.udf_string_urlquerystring` - Extracts query string from a URL
- `dbo.udf_validate_said` - Validates South African ID numbers

### Stored Procedures

#### Database Administration
- `dbo.usp_dba_backupandzipdatabases` - Backs up and compresses databases
- `dbo.usp_dba_cloneuser` - Clones user permissions and roles
- `dbo.usp_dba_createdsnlessmysqllinkedserver` - Creates MySQL linked server without DSN
- `dbo.usp_dba_createlinkedserver` - Creates a linked server
- `dbo.usp_dba_dbsizerecommendations` - Provides database size optimization recommendations
- `dbo.usp_dba_deployaudittriggers` - Deploys audit triggers on tables
- `dbo.usp_dba_dropuserobject` - Drops a specific user object
- `dbo.usp_dba_dropuserobjects` - Drops multiple user objects
- `dbo.usp_dba_findkeyrelationships` - Finds relationships between tables
- `dbo.usp_dba_fixdbfilelocations` - Fixes database file locations
- `dbo.usp_dba_formatsqlapi` - Formats SQL API calls
- `dbo.usp_dba_genjoinedquery` - Generates joined queries
- `dbo.usp_dba_killallusers` - Kills all user connections
- `dbo.usp_dba_objectdefinitions` - Gets object definitions
- `dbo.usp_dba_SMOscriptobject` - Scripts objects using SMO

#### HTTP and File Operations
- `dbo.usp_format_querytohtml` - Formats query results as HTML
- `dbo.usp_http_request` - Makes HTTP requests
- `dbo.usp_os_execcmd` - Executes command shell commands
- `dbo.usp_os_execps` - Executes PowerShell commands
- `dbo.usp_os_writefile_bcp` - Writes data to file using BCP
- `dbo.usp_os_writefile` - Writes data to file
- `dbo.usp_os_writetempfile` - Writes data to temporary file

### Table-valued Functions
- `dbo.udtf_hex_torgb` - Converts hex color to RGB values
- `dbo.udtf_html_datatypes` - Returns HTML data types
- `dbo.udtf_http_request` - Makes HTTP requests returning result sets
- `dbo.udtf_oa_readfile` - Reads file contents as result set
- `dbo.udtf_parse_json` - Parses JSON into table format
- `dbo.udtf_string_chars` - Splits string into character result set
- `dbo.udtf_string_urlqueryparams` - Parses URL query parameters

### Views
- `dbo.vw_dba_brokenprocedures` - Lists stored procedures with compilation errors
- `dbo.vw_dba_columnnames` - Lists all column names across databases
- `dbo.vw_dba_foreignkeys` - Shows foreign key relationships
- `dbo.vw_dba_missingindexs` - Identifies missing indexes

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
