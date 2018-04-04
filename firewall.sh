#!/bin/bash -ex

#sudo iptables -P INPUT ACCEPT
#sudo iptables -P FORWARD ACCEPT

sudo iptables -A FORWARD -p tcp -i enp0s3 --sport 80 -j ACCEPT
sudo iptables -A FORWARD -p udp -i enp0s3 --sport 53 -j ACCEPT
sudo iptables -A FORWARD -p tcp -i enp0s3 --sport 20 -j ACCEPT
sudo iptables -A FORWARD -p tcp -i enp0s3 --sport 21 -j ACCEPT
sudo iptables -A FORWARD -p tcp -i enp0s3 --sport 23 -j ACCEPT
sudo iptables -A FORWARD -p tcp -i enp0s3 --sport 107 -j ACCEPT
sudo iptables -A FORWARD -p tcp -i enp0s3 --sport 110 -j ACCEPT
sudo iptables -A FORWARD -p tcp -i enp0s3 --sport 995 -j ACCEPT
sudo iptables -A FORWARD -p tcp -i enp0s3 --sport 25 -j ACCEPT
sudo iptables -A FORWARD -p tcp -i enp0s3 --sport 465 -j ACCEPT
sudo iptables -A FORWARD -p icmp -i enp0s3 -j ACCEPT
sudo iptables -A FORWARD -i enp0s3 -j DROP

#sudo iptables -P OUTPUT ACCEPT
