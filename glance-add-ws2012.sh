VHD=/mnt/hgfs/Downloads/WS\ 2012\ Std\ Eval\ Cloudbase.vhd
glance image-create --property hypervisor_type=hyperv --name "Windows Server 2012 Std Eval" --container-format bare --disk-format vhd < "$VHD"

