#!/bin/sh

echo 正在执行. . .

echo > /var/spool/cron/root

crontab -l

kill 1288

kill 1338

kill 1404

kill 1274

/usr/local/qcloud/stargate/admin/uninstall.sh

/usr/local/qcloud/YunJing/uninst.sh

/usr/local/qcloud/monitor/barad/admin/uninstall.sh

rm -rf /usr/local/qcloud

bash /usr/local/qcloud/YunJing/uninst.sh

bash /usr/local/qcloud/stargate/admin/uninstall.sh

bash /usr/local/qcloud/monitor/barad/admin/uninstall.sh

systemctl stop tat_agent

systemctl disable tat_agent

rm -f /etc/systemd/system/tat_agent.service

ps -A | grep agent

echo 执行成功!
