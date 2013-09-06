bunzip2 -cd /tmp/centos64_cloudinit_demo.qcow2.bz2 |  glance image-create --property hypervisor_type=qemu --name "CentOS64_QEMU" --container-format bare --disk-format qcow2 

