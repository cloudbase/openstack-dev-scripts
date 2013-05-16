PORTID=`quantum port-list | awk '{if (NR == 4) {print $2}}'`
quantum port-delete $PORTID 

