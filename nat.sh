#!/bin/bash -ex
sudo iptables -t nat -A POSTROUTING -s 192.168.0.0/16 -o enp0s3 -j MASQUERADE
sudo iptables -t nat -A PREROUTING -i enp0s3 -j DNAT --to-destination 192.168.0.1
#useless piece of ****
#sudo echo "1" > /proc/sys/net/ipv4/ip_forward
sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"
