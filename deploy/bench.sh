#!/bin/bas
cd /home/isucon/isuumo/bench && ./bench 2>1 | tail -n 1 | xargs -I{} sh /home/isucon/isucon10/deploy/notify.sh {}
