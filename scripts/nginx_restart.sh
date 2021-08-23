#!/bin/bash -xe

JOBID="$1"

if [ -n "$JOBID" ]; then
  JOBID=`printf "%05d" "${JOBID}"`
  cp /var/log/nginx/access.log /home/isucon/webapp/logs/access_$JOBID.log
fi

sudo mv /var/log/nginx/access.log /var/log/nginx/access.log.`date "+%Y%m%d-%H%M%S"`
sudo service nginx restart
