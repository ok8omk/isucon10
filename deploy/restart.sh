#!/bin/bash
DIR='/home/isucon/isucon10'
echo '== system restart =='
sudo systemctl restart mysql
sudo systemctl status mysql
sudo systemctl restart nginx
sudo systemctl status nginx
sudo systemctl restart isuumo.python.service
sudo systemctl status isuumo.python.service
echo '== complete =='
