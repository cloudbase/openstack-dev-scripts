NETID1=`neutron net-show net1 | awk '{if (NR == 5) {print $4}}'`
NETID2=`neutron net-show net2 | awk '{if (NR == 5) {print $4}}'`

nova boot  --flavor 13 --image "Windows Server 2012 Std Eval" --key-name key1 --nic net-id=$NETID1 vm1

