NETID1=`quantum net-show net1 | awk '{if (NR == 5) {print $4}}'`

nova boot  --flavor 11 --image "Cirros" --key-name key1 --nic net-id=$NETID1 vm4

