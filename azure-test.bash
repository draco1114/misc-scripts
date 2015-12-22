#!/bin/bash

readonly HOSTNAME=`hostname`
readonly IP=`ifconfig | grep inet | grep -v inet6 | grep -v 127.0.0 | awk '{print $2}' | awk -F: '{print $2}'`
readonly FILE='/var/tmp/ip_info'

if [ ! -e ${FILE} ]; then
    touch ${FILE}
fi

echo ${HOSTNAME} >> ${FILE}
echo ${IP} >> ${FILE}
