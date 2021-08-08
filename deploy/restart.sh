#!/bin/bash
DIR='/home/isucon/isucon10'
echo '== system restart =='
if [ -f /var/log/mysql/mysql-slow.log ]; then
  sudo mv /var/log/mysql/mysql-slow.log /var/log/mysql/mysql-slow.log.$(date "+%Y%m%d_%H%M%S")
fi
sudo systemctl restart mysql
sudo systemctl status mysql
sudo systemctl restart nginx
sudo systemctl status nginx
sudo systemctl restart isuumo.python.service
sudo systemctl status isuumo.python.service
echo '== complete =='
