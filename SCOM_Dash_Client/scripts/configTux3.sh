#!/bin/bash
/etc/init.d/networking restart
# IN   
ifconfig eth0 up
ifconfig eth0 172.16.20.30/24				              

ifconfig eth1 up
ifconfig eth1 172.16.21.30/24				              
route add default gw 172.16.21.40

echo 1 > /proc/sys/net/ipv4/ip_forward
echo 0 > /proc/sys/net/ipv4/icmp_echo_ignore_broadcasts

cp /etc/resolv.conf /etc/resolv.conf.backup
echo "nameserver 172.16.2.1" >> /etc/resolv.conf
