#!/bin/bash
/etc/init.d/networking restart
ifconfig eth0 up					                   
ifconfig eth0 172.16.20.20/24				              
route add default gw 172.16.20.30
route -n

cp /etc/resolv.conf /etc/resolv.conf.backup
echo "nameserver 172.16.2.1" >> /etc/resolv.conf

