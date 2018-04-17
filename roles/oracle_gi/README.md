ORACLE_GI
=========

This role creates and configures the Oracle Grid Infrastructure (GI) for a Linux cluster.

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
* oracle_gi as a dictionary with the following keys:
  * inventory_location = path to Oracle Product Inventory directory
  * oracle_base = path to base directory for GI working files
  * crs_home = path to base directory for GI software installation

Dependencies
------------

* COMMON
* ORACLE_USER

Example Playbook
----------------

```yml
- hosts: servers
  roles:
  - common
  - oracle_user
  - oracle_gi
```

License
-------

BSD

