#!/bin/sh
[ -d "$HOME/.ssh" ] || mkdir -m 700 $HOME/.ssh
wget https://nazarewk.github.io/nazarewk.pub -O "$HOME/.ssh/authorized_keys"
systemctl start sshd.service
