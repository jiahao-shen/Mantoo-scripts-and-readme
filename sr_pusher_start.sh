#!/bin/bash

echo "##########################################################"
echo "##     OSHI Hybrid IP/SDN Hybrid                        ##"
echo "##                                                      ##"
echo "##     sr_pusher_start.sh                               ##"
echo "##                                                      ##"
echo "##  usage:                                              ##"
echo "## ./sr_pusher_start.sh controller_ip:port --add/--del  ##"
echo "##                                                      ##"
echo "##  example:                                            ##"
echo "## ./sr_pusher_start.sh 10.255.245.1:8080 --add         ##"
echo "##########################################################"

WORKSPACE="workspace"
cd $HOME/SDN/SDN-TE-SR-tools
mv java-te-sr/flow/out_flow_catalogue.json OSHI-SR-pusher/
cd $HOME/SDN/SDN-TE-SR-tools/OSHI-SR-pusher/
rm sr_vlls.json
./sr_vll_pusher.py --controller $1 $2
