#!/bin/bash
DIR='/home/isucon/isucon10'
echo '== system restart =='
sudo systemctl restart mysql
sudo systemctl restart nginx
sudo systemctl restart isuumo.python.service
echo '== complete =='
