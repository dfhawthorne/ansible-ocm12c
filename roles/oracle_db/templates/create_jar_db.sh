#!/bin/sh
# ------------------------------------------------------------------------------
# Creates a CDB using SQL*Plus
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# Set up Oracle Environment variables
# ------------------------------------------------------------------------------

export ORACLE_SID=jar
export ORACLE_HOME=/opt/app/oracle/product/12.1.0/dbhome_1

# ------------------------------------------------------------------------------
# Make directories
# ------------------------------------------------------------------------------

mkdir -p /opt/app/oracle/admin/jar/adump
mkdir -p /opt/app/oracle/oradata
mkdir -p /opt/app/oracle/fast_recovery_area

# ------------------------------------------------------------------------------
# Create database using SQL*Plus
# ------------------------------------------------------------------------------

${ORACLE_HOME}/bin/sqlplus / as sysdba <<DONE
{% include 'create_jar_db.sql' %}

REM ============= All Done ===================
DONE
