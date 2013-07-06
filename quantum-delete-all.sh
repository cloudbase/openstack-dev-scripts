#!/bin/sh
SUBNETID1=`quantum net-show net1 | awk '{if (NR == 13) {print $4}}'`
quantum router-interface-delete router1 $SUBNETID1
quantum net-delete net1

SUBNETID2=`quantum net-show net2 | awk '{if (NR == 13) {print $4}}'`
quantum router-interface-delete router1 $SUBNETID2
quantum net-delete net2

quantum router-delete router1

quantum net-delete ext_net

