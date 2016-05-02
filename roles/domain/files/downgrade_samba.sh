#!/bin/bash

apt-get -y --force-yes install \
libldb1=1:1.1.16-1 \
libsmbclient=2:4.1.6+dfsg-1ubuntu2 \
python-ldb=1:1.1.16-1 \
python-samba=2:4.1.6+dfsg-1ubuntu2 \
samba=2:4.1.6+dfsg-1ubuntu2 \
samba-common=2:4.1.6+dfsg-1ubuntu2 \
samba-common-bin=2:4.1.6+dfsg-1ubuntu2 \
samba-dsdb-modules=2:4.1.6+dfsg-1ubuntu2 \
samba-libs=2:4.1.6+dfsg-1ubuntu2 \
samba-vfs-modules=2:4.1.6+dfsg-1ubuntu2 \
smbclient=2:4.1.6+dfsg-1ubuntu2 \
libnss-winbind=2:4.1.6+dfsg-1ubuntu2 \
libpam-winbind=2:4.1.6+dfsg-1ubuntu2 \
libwbclient0=2:4.1.6+dfsg-1ubuntu2 \
winbind=2:4.1.6+dfsg-1ubuntu2

pkglist="libldb1 libsmbclient python-ldb python-samba samba-common samba-common-bin samba-dsdb-modules samba-libs samba-vfs-modules smbclient libnss-winbind libpam-winbind libwbclient0"

for pkg in ${pkglist}; do
  apt-mark auto ${pkg}
  apt-mark hold ${pkg}
done
