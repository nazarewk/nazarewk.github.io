#!/bin/sh
# curl -s https://nazarewk.github.io/archiso-ssh.sh | sh
[ -d "$HOME/.ssh" ] || mkdir -m 700 $HOME/.ssh
curl https://nazarewk.github.io/nazarewk.pub > "$HOME/.ssh/authorized_keys"
systemctl start sshd.service
