VHD=/mnt/hgfs/Images/centos64_1.vhd.gz
gunzip -cd $VHD | glance image-create --property hypervisor_type=hyperv --name "CentOS64" --container-format bare --disk-format vhd

