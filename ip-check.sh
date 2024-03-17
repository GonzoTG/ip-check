#!/bin/bash
# check and send ip address to email
MYIP=`curl --ipv4 ifconfig.me`;
TIME=`date`;
LASTIPFILE='/opt/ip-check/.last_ip_addr';
touch ${LASTIPFILE}
LASTIP=`cat ${LASTIPFILE}`;

if [[ ${MYIP} != ${LASTIP} ]]
then
  pushover-cli push "Public IP changed for '$(hostname -d)'. Old IP: ${LASTIP}, New IP: ${MYIP}" -p high -s alien;
  echo ${MYIP} > ${LASTIPFILE};
else
        echo "no IP change!"
fi
