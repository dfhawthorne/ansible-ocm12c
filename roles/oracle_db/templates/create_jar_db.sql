REM ============================================================================
REM Error handling
REM ============================================================================
WHENEVER OSERROR  EXIT FAILURE
WHENEVER SQLERROR EXIT FAILURE
REM ============================================================================
REM Set passwords
REM ============================================================================
SET VERIFY OFF
DEFINE pw_sys="{{ oracle_pw.SYSPassword }}"
DEFINE pw_system="{{ oracle_pw.SYSTEMPassword }}"
REM ============================================================================
REM Create Server Parameter File
REM ============================================================================
startup nomount force pfile='/home/oracle/sql-ocm12c/General Database and Network Administration, and Backup Strategy/Create and manage pluggable databases/OMF initjar.ora'
CREATE SPFILE FROM pfile='/home/oracle/sql-ocm12c/General Database and Network Administration, and Backup Strategy/Create and manage pluggable databases/OMF initjar.ora';
startup nomount force
REM ============================================================================
REM Create Database using scripts
REM ============================================================================
@'/home/oracle/sql-ocm12c/General Database and Network Administration, and Backup Strategy/Create and manage pluggable databases/Create CDB OMF.sql'
REM ============================================================================
REM Enable Log Archiving
REM ============================================================================
SHUTDOWN IMMEDIATE
STARTUP MOUNT
ALTER DATABASE ARCHIVELOG;
SHUTDOWN IMMEDIATE
EXIT
