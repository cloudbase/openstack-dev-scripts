#quantum net-create net1
#quantum subnet-create net1 10.0.1.0/24
#quantum net-create net2
#quantum subnet-create net2 10.0.2.0/24

NETID1=`quantum net-create net1 | awk '{if (NR == 6) {print $4}}'`
SUBNETID1=`quantum subnet-create net1 10.0.1.0/24 | awk '{if (NR == 11) {print $4}}'`

NETID2=`quantum net-create net2 --provider:network_type flat --provider:physical_network physnet1 | awk '{if (NR == 6) {print $4}}'`
SUBNETID2=`quantum subnet-create net2 10.0.2.0/24 | awk '{if (NR == 11) {print $4}}'`

ROUTERID1=`quantum router-create router1 | awk '{if (NR == 7) {print $4}}'`

quantum router-interface-add $ROUTERID1 $SUBNETID1
quantum router-interface-add $ROUTERID1 $SUBNETID2

EXTNETID1=`quantum net-create ext_net --router:external=True | awk '{if (NR == 6) {print $4}}'`
quantum subnet-create ext_net --allocation-pool start=192.168.209.100,end=192.168.209.120 --gateway 192.168.209.2 192.168.209.0/24 --enable_dhcp=False

quantum router-gateway-set $ROUTERID1 $EXTNETID1

