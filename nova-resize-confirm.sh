nova boot  --flavor 11 --image "Ubuntu Server 12.04" --key-name key1 --poll vm1
nova resize vm1 12  --poll
nova resize-confirm vm1
