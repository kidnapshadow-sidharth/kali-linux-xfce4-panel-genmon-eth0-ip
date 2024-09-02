#!/bin/sh
ip=$(ip addr show eth0 | grep "inet\b" | awk '{print $2}' | cut -d/ -f1)

if [ "${ip}" != "" ]; then
  printf "<icon>network-vpn-symbolic</icon>"
  printf "<txt>${ip}</txt>"
  printf "<tool>Eth0 IP</tool>"
else
  printf "<txt></txt>"
fi

#kidnapshadow 
