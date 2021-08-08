et -ex
IPADDR=$1
USERNAME=$USER
DIR='/home/isucon/isucon10'
ssh isucon@$IPADDR "$DIR/deploy/notify.sh $USERNAME 'deploying...' && cd $DIR/deploy && git pull &&  sudo systemctl restart mysql && sudo systemctl restart nginx && /home/isucon/notify.sh $USERNAME 'deploy done'"

