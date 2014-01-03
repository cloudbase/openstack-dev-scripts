NETID1=`neutron net-show net1 | awk '{if (NR == 5) {print $4}}'`

nova boot  --flavor 13 --image "CentOS64" --key-name key1 --nic net-id=$NETID1 vm1

