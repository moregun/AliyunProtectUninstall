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

ps -A | grep agent

echo 执行成功!
