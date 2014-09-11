NETID1=`neutron net-show private | awk '{if (NR == 5) {print $4}}'`
nova boot  --flavor m1.tiny --image "cirros" --key-name key1 --nic net-id=$NETID1 vm1

