NETID1=`neutron net-show net1 | awk '{if (NR == 5) {print $4}}'`
nova boot  --flavor m1.micro --image "cirros" --key-name key1 --nic net-id=$NETID1 vm1

