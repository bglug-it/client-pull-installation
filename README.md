# Ansible-pull configuration playbook for domain clients #

## Progetto Scuola - [<img src="https://avatars1.githubusercontent.com/u/12886037?v=3&s=200" width="25" height="25" alt="BgLUG logo" /> BgLUG][bglug] - Scenario 1 ##

Configurations for [Ubuntu][] client (or better, [Edubuntu][]) inside a
[SAMBA][] 3.0 domain with [NethServer][].

The files in this repository has to be read and executed by `ansible-pull`
(please check it out from [Ansible][]) from the client, right after the first
installation via PXE and using custom kickstart files.

## ToDo List ##

* Fix HTTPS proxy (needs to load a certificate in each client)
* Add and test operators for sudo operations
* Implementation of dynamic inventory for `ansible-pull` (should permit to
  pass further configuration variables with the help of
[`doraemon`](https://github.com/bglug-it/doraemon))
* Tasks/roles testing

[bglug]: http://bglug.it "BgLUG Homepage"
[ubuntu]: http://www.ubuntu.com
[edubuntu]: http://www.edubuntu.com
[nethserver]: http://www.nethserver.org
[samba]: http://www.samba.org
[ansible]: http://www.ansible.com
