ORACLE_CLUSTERED_SERVER
=======================

This role creates and configures the Oracle Grid Infrastructure (GI) for a Linux cluster.

Requirements
------------

See meta/main.yml

Role Variables
--------------

The following variables need to be provided for this role:
* oracle_gi as a dictionary with the following keys:
  * inventory_location = path to Oracle Product Inventory directory
  * oracle_base = path to base directory for GI working files
  * crs_home = path to base directory for GI software installation

Dependencies
------------

See meta/main.yml

Example Playbook
----------------

```yml
- hosts: servers
  roles:
  - oracle_clustered_server
```

License
-------

MIT

