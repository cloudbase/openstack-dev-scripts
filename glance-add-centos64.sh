VHD=/mnt/hgfs/Downloads/CentOS-6.4-x86_64-Minimal-OpenStack.image.vpc.bz2
bunzip2 -cd $VHD | glance image-create --property hypervisor_type=hyperv --name "CentOS64" --container-format bare --disk-format vhd

