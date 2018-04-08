ORACLE_USER
===========

This role maintains the oracle user and its associated groups. Also, the basic directory structure is defined.

Requirements
------------

None.

Role Variables
--------------

* `oracle_user` is a dictionary which has the following three (3) keys:
  1. `install_group` (Installation Linux Group) which is a dictionary which has the following two (2) keys:
     1. `name` = name of Linux group
     1. `gid` = Linux group ID
  1. `asm_groups` (ASM Linux Groups) which is also a dictionary which has the following three (3) keys:
     1. `OSDBA`
     1. `OSOPER`
     1. `OSASM`
     * Each of these is a dictionary which has the following two (2) keys:
       * `name` = name of Linux group
       * `gid` = Linux group ID
  1. `db_groups` (Database Linux Groups) which is also a dictionary which has the following two (2) keys:
     1. `DBA_GROUP`
     1. `OPER_GROUP`
     * Each of these is a dictionary which has the following two (2) keys:
       * `name` = name of Linux group
       * `gid` = Linux group ID

Dependencies
------------

None.

Example Playbook
----------------

An example of how to use this role is:
```yml
- hosts: servers
  roles:
  - oracle_user
```

Incomplete Repository
---------------------

This role is missing one (1) file from the repository:
1. roles/oracle_user/vars/oracle_pw.yml

The file contains a password (albeit in a hashed format).

License
-------

BSD


