#!/bin/bash

readonly HOSTNAME=`hostname`
readonly IP=`ifconfig | grep inet | grep -v inet6 | grep -v 127.0.0 | awk '{print $2}' | awk -F: '{print $2}'`

echo ${HOSTNAME} >> /var/tmp/ip_info
echo ${IP} >> /var/tmp/ip_info


exit 0
