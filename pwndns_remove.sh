#!/usr/bin/bash
chattr -sia /root/.bash_profile
echo " " > /root/.bash_profile
chattr -sia /sbin/entpdate
rm -rf /sbin/entpdate
chattr -sia /sbin/lntpdate
rm -rf /sbin/lntpdate
chattr -sia /etc/init.d/pwnrig
rm -rf /etc/init.d/pwnrig
chattr -sia /etc/cron.hourly/pwnrig
rm -rf /cron.hourly/pwnrig
chattr -sia /etc/init.d/ntpdate
rm -rf /etc/init.d/pwnrig
rm -rf /var/tmp/.update
rm -rf /var/tmp/.systemd
chattr -sia /etc/cron.hourly/ntpdate
rm -rf /etc/cron.hourly/ntpdate
chattr -sia /etc/cron.hourly/pwnrig
rm -rf /etc/cron.hourly/pwnrig
chattr -sia /etc/cron.daily/ntpdate
rm -rf /etc/cron.daily/ntpdate
chattr -sia /etc/cron.daily/pwnrig
rm -rf /etc/cron.daily/pwnrig
chattr -sia /etc/cron.d/ntpdate
rm -rf /etc/cron.d/ntpdate
chattr -sia /etc/cron.d/pwnrig
rm -rf /etc/cron.d/pwnrig
chattr -sia /etc/cron.monthly/ntpdate
rm -rf /etc/cron.monthly/ntpdate
chattr -sia /etc/cron.monthly/pwnrig
rm -rf /etc/cron.monthly/pwnrig
chattr -sia /etc/cron.weekly/ntpdate
rm -rf /etc/cron.weekly/ntpdate
chattr -sia /etc/cron.weekly/pwnrig
rm -rf /etc/cron.weekly/pwnrig
chattr -sia /bin/sysdr
rm -rf /bin/sysdr
systemctl stop pwnrigl.service
chattr -sia /etc/systemd/system/pwnrigl.service
chattr -sia /usr/lib/systemd/system/pwnrigl.service
systemctl disable pwnrigl.service
chattr -sia /etc/systemd/system/pwnrige.service
systemctl disable pwnrige.service
systemctl stop lntpdate.service
systemctl disable lntpdate.service
rm -rf /etc/systemd/system/pwnrige.service
rm -rf /etc/systemd/system/multi-user.target.wants/pwnrige.service
rm -rf /etc/systemd/system/pwnrige.service
rm -rf /etc/systemd/system/multi-user.target.wants/pwnrige.service
rm -rf /etc/rc4.d/S01pwnrig
rm -rf /etc/rc3.d/S01pwnrig
rm -rf /etc/rc2.d/S01pwnrig
rm -rf /etc/rc5.d/S01pwnrig
rm -rf /etc/rc4.d/S01ntpdate
rm -rf /etc/rc3.d/S01ntpdate
rm -rf /etc/rc2.d/S01ntpdate
rm -rf /etc/rc5.d/S01ntpdate
echo "" > /etc/ld.so.preload



echo "reboot server after 10 second"
sleep 10
reboot
