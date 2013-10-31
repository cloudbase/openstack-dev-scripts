#!/bin/sh
SUBNETID1=`neutron net-show net1 | awk '{if (NR == 13) {print $4}}'`
neutron router-interface-delete router1 $SUBNETID1
neutron net-delete net1

SUBNETID2=`neutron net-show net2 | awk '{if (NR == 13) {print $4}}'`
neutron router-interface-delete router1 $SUBNETID2
neutron net-delete net2

neutron router-delete router1

neutron net-delete ext_net

