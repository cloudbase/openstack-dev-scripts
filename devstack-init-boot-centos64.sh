#!/bin/bash
set -e

BASEDIR=$(dirname $0)

$BASEDIR/glance-add-centos64.sh
$BASEDIR/nova-create-key.sh
$BASEDIR/nova-flavor-create.sh
$BASEDIR/neutron-create-networks.sh
$BASEDIR/nova-boot-centos64.sh

