VHD=/mnt/hgfs/Images/windows_server_2012_standard_eval_hyperv_20130531.vhd.gz
gunzip -cd $VHD | glance image-create --property hypervisor_type=hyperv --name "Windows Server 2012 Std Eval" --container-format bare --disk-format vhd -min-disk 20 --min-ram 1024

