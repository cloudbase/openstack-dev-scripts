#neutron net-create net1
#neutron subnet-create net1 10.0.1.0/24
#neutron net-create net2
#neutron subnet-create net2 10.0.2.0/24

NETID1=`neutron net-create net1 | awk '{if (NR == 6) {print $4}}'`
SUBNETID1=`neutron subnet-create net1 10.0.1.0/24 --dns_nameservers list=true 8.8.8.8 | awk '{if (NR == 11) {print $4}}'`

NETID2=`neutron net-create net2 --provider:network_type flat --provider:physical_network physnet1 | awk '{if (NR == 6) {print $4}}'`
SUBNETID2=`neutron subnet-create net2 10.0.2.0/24 | awk '{if (NR == 11) {print $4}}'`

ROUTERID1=`neutron router-create router1 | awk '{if (NR == 7) {print $4}}'`

neutron router-interface-add $ROUTERID1 $SUBNETID1
neutron router-interface-add $ROUTERID1 $SUBNETID2

EXTNETID1=`neutron net-create ext_net --router:external=True | awk '{if (NR == 6) {print $4}}'`
neutron subnet-create ext_net --allocation-pool start=192.168.209.100,end=192.168.209.120 --gateway 192.168.209.2 192.168.209.0/24 --enable_dhcp=False

neutron router-gateway-set $ROUTERID1 $EXTNETID1

# Enable ping, SSH and RDP

nova secgroup-add-rule default icmp 8 8 0.0.0.0/0
nova secgroup-add-rule default tcp 22 22 0.0.0.0/0
nova secgroup-add-rule default tcp 3389 3389 0.0.0.0/0


