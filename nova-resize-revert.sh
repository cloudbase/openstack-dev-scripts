nova boot  --flavor 1 --image "Ubuntu Server 12.04" --key-name key1 --poll vm1
nova resize vm1 11  --poll
nova resize-revert vm1
