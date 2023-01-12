#!/bin/bash

echo 1 > /proc/sys/net/ipv4/ip_forward

iptables -t nat -A POSTROUTING -j MASQUERADE

forticlientsslvpn/64bit/helper/setup.linux.sh 2
expect /forti/run_connect.sh
