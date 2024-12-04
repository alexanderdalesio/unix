#!/bin/bash

iptables -A INPUT -s 10.210.16.0/24 -j ACCEPT
iptables -P INPUT DROP

echo "Firewall rules applied. Only 10.210.16.0/24 has access."
