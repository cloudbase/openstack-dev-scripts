PORTID=`neutron port-list | awk '{if (NR == 4) {print $2}}'`
neutron port-delete $PORTID 

