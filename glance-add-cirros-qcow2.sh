#!/bin/sh
set -e
IMAGEFILE=cirros-0.3.0-x86_64-disk.img
wget https://launchpad.net/cirros/trunk/0.3.0/+download/$IMAGEFILE
glance image-create --property hypervisor_type=qemu --name "cirros" --container-format bare --disk-format qcow2 < $IMAGEFILE


