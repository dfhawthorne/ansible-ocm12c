oracle_single_server
====================

Creates a single Linux server suitable for hosting an Oracle RDBMS database.

Requirements
------------

None.

Role Variables
--------------

* `is_oracle_asm_installed` - this flag indicates whether support for Oracle ASM is to be installed

Dependencies
------------

* common
* oracle_user

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: oracle_single_server, is_oracle_asm_installed: False }

License
-------

MIT

