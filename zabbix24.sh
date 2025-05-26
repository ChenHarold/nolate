#/usr/bin/bash
wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-6+ubuntu24.04_all.deb
dpkg -i zabbix-release_6.0-6+ubuntu24.04_all.deb
apt update
apt install zabbix-agent2 zabbix-agent2-plugin-* -y
systemctl enable zabbix-agent2
rm -rf zabbix-release_6.0-6+ubuntu24.04_all.deb
