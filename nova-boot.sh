NETID1=`neutron net-show net1 | awk '{if (NR == 5) {print $4}}'`
NETID2=`neutron net-show net2 | awk '{if (NR == 5) {print $4}}'`

nova boot  --flavor 11 --image "Ubuntu Server 12.04" --key-name key1 --nic net-id=$NETID1 vm1

