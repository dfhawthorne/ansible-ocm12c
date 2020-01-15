#!/bin/sh
# ------------------------------------------------------------------------------
# Creates a CDB using SQL*Plus
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# Set up Oracle Environment variables
# ------------------------------------------------------------------------------

export ORACLE_SID=jar
export ORACLE_HOME={{ oracle_vars.oracle_home }}
export PATH=${ORACLE_HOME}/perl/bin:${ORACLE_HOME}/bin:${PATH}

# ------------------------------------------------------------------------------
# Make directories
# ------------------------------------------------------------------------------

mkdir -p {{ oracle_vars.oracle_base }}/admin/jar/adump
mkdir -p {{ oracle_vars.oracle_base }}/oradata
mkdir -p {{ oracle_vars.oracle_base }}/fast_recovery_area

# ------------------------------------------------------------------------------
# Create database using SQL*Plus
# ------------------------------------------------------------------------------

${ORACLE_HOME}/bin/sqlplus / as sysdba <<DONE
{% include 'create_jar_db.sql' %}

REM ============= All Done ===================
DONE
