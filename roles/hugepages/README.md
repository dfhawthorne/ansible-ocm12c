HUGEPAGES
=========

Enables HugePages on Oracle Enterprise Linux (OEL) systems.

Requirements
------------

None.

Role Variables
--------------

Variable Name | Description
------------- | -----------
`num_huge_pages` | An integer of the number of 2 MB pages to be allocated. This parameter is optional. If it is not set, no HugePages are set.

Dependencies
------------

None.

Example Playbook
----------------

```yml
- hosts: servers
  roles:
  - hugepages
...
```

License
-------

BSD
