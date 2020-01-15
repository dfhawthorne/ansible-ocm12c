# ansible-ocm12c
Ansible playbooks and associated files for constructing an Oracle 12C RAC environment as well as single instance environments for Oracle 12 Data Guard.

## Incomplete Repository

This repository is missing two (2) files:
1. `roles/oracle_user/vars/oracle_pw.yml`
1. `roles/oracle_database/vars/oracle_pw.yml`

These files contains passwords.

## NFS Mount Point

Installation files are all stored on a NFS mount point (`/opt/share/Software`).

## Design Journal

I am maintaining a design journal on my [blog](https://yaocm.wordpress.com). I am also maintaining a catalogue of these entries [here](https://sites.google.com/site/yetanotherocmoriginal/home/12-ocm/design-journal).
