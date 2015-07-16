# Ansible-pull configuration playbook for domain clients #

## BgLUG - Progetto Scuola --- Scenary 1 ##

Configurations for Ubuntu client inside a SAMBA 3.0 domain with
[NethServer](http://www.nethserver.org/).

The files in this repository has to be read and executed by `ansible-pull`
from the client, right after the first installation via PXE and using custom
kickstart files.

## TODO ##

* Better split of roles (the *domain* role is quite complex and
  heterogeneous)
* Implementation of dynamic inventory for `ansible-pull` (should permit to
  pass further configuration variables with the help of
[`doraemon`](https://github.com/bglug-it/doraemon))
* Tasks/roles testing
