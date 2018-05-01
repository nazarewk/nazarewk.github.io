#!/bin/sh
pacman-key --recv-keys 5E1ABF240EE7A126
pacman-key --lsign-key 5E1ABF240EE7A126
cat <<EOF >> /etc/pacman.conf
[archzfs]
Server = http://archzfs.com/archzfs/x86_64
EOF
pacman -Syy
