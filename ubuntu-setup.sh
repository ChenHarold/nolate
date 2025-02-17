apt update && apt upgrade -y

sed -i "s/preserve_hostname: false/preserve_hostname: true/g" /etc/cloud/cloud.cfg

apt install ntp lrzsz xinetd net-tools bash-completion htop unzip -y
systemctl enable ntp


cat >> /etc/security/limits.conf << EOF
*       soft    nofile  65535
*       hard    nofile  65535
*       soft    nproc  65535
*       hard    nproc  65535
root    soft    nofile  65535
root    hard    nofile  65535
root    soft    nproc  65535
root    hard    nproc  65535
EOF

cat >> /etc/sysctl.conf << EOF
net.core.somaxconn = 1024
net.core.netdev_max_backlog = 5000
net.core.rmem_max = 16777216
net.core.wmem_max = 16777216
net.ipv4.tcp_wmem = 4096 12582912 16777216
net.ipv4.tcp_rmem = 4096 12582912 16777216
net.ipv4.tcp_max_syn_backlog = 8096
net.ipv4.tcp_slow_start_after_idle = 0
net.ipv4.tcp_syncookies = 1
net.ipv4.tcp_tw_reuse = 1
net.ipv4.tcp_fin_timeout = 60
net.ipv4.tcp_synack_retries = 1
net.ipv4.tcp_syn_retries = 1
net.ipv4.tcp_fastopen = 3
net.ipv4.ip_local_port_range = 10240 65535
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1
net.core.default_qdisc=fq
net.ipv4.tcp_congestion_control=bbr
EOF

sysctl -p

timedatectl set-timezone Etc/GMT-8

echo "run dpkg-reconfigure tzdata"

