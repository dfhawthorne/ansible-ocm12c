oracle_standalone_server
========================

Creates a stand-alone Linux server suitable for hosting an Oracle RDBMS database.

Requirements
------------

None.

Role Variables
--------------

* `is_oracle_asm_installed` - this flag indicates whether support for Oracle ASM is to be installed. This defaults to False for stand-alone servers.

Dependencies
------------

See meta/main.yml

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```yml
    - hosts: servers
      roles:
         - oracle_standalone_server
```

License
-------

MIT

