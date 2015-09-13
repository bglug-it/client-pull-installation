# Ansible-pull configuration playbook for domain clients #

## Progetto Scuola - [<img src="https://avatars1.githubusercontent.com/u/12886037?v=3&s=200" width="25" height="25" alt="BgLUG logo" /> BgLUG][bglug] - Scenario 1 ##

Configurations for [Ubuntu][ubuntu] client (or better, [Edubuntu][edubuntu])
inside a [SAMBA][samba] 3.0 domain with [NethServer][nethserver].

The files in this repository has to be read and executed by `ansible-pull`
(please check it out from [Ansible][ansible]) from the client, right after the
first installation via PXE and using custom kickstart files.

[bglug]: http://bglug.it "BgLUG Homepage"
[ubuntu]: http://www.ubuntu.com
[edubuntu]: http://www.edubuntu.com
[nethserver]: http://www.nethserver.org
[samba]: http://www.samba.org
[ansible]: http://www.ansible.com
