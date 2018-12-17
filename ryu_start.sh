#!/bin/bash

echo "#################################################"
echo "##     OSHI Hybrid IP/SDN Hybrid ryu_start     ##"
echo "##                                             ##"
echo "##  The process can last many minutes. Please  ##"
echo "##  wait and do not interrupt the process.     ##"
echo "#################################################"

WORKSPACE="workspace"
cd $HOME/SDN/dreamer-ryu/ryu/app
ryu-manager --observe-links ofctl_rest.py rest_topology.py
