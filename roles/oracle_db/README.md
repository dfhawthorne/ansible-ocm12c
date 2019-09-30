ORACLE_DB
=========

This role creates and configures the Oracle Database for a Linux server.

Requirements
------------

The following non-standard packages are required:
* PEXPECT
  * This is installed by the COMMON role

The following roles are required:
* COMMON
* ORACLE_USER

Role Variables
--------------

The following variables need to be provided for this role:
* oracle_dbca as a dictionary with the following keys:
  * `OPERATION_TYPE`
    * Type of operation
  * `GDBNAME`
    * Global database name of the database
  * `DATABASECONFTYPE`
    * database conf type as Single Instance, Real Application Cluster or Real Application Cluster One Nodes database
  * `SID`
    * System identifier (SID) of the database
  * `CREATEASCONTAINERDATABASE` 
    * flag to create database as container database 
  * `NUMBEROFPDBS`
    * Specify the number of pdb to be created
  * `PDBNAME`
    * Specify the pdbname/pdbanme prefix if one or more pdb need to be created
  * `EMCONFIGURATION`
    * Enterprise Manager Configuration Type


Dependencies
------------

* COMMON
* ORACLE_USER

Missing File
------------

The file, `./roles/oracle_db/vars/oracle_pw.yml`, is *not* available in the online repository because it contains passwords. It has the following format:
```yml
---
SYSPassword:            "pw"
SYSTEMPassword:         "pw"
DBSNMPPASSWORD:         "pw"
...
```

Example Playbook
----------------

```yml
- hosts: servers
  roles:
  - common
  - oracle_user
  - oracle_db
```

License
-------

MIT



