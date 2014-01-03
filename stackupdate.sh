#!/bin/bash
pushd .
cd /opt/stack/nova
git pull
cd /opt/stack/glance
git pull
cd /opt/stack/cinder
git pull
cd /opt/stack/keystone
git pull
cd /opt/stack/neutron
git pull
cd /opt/stack/horizon
git pull
cd /opt/stack/swift
git pull
cd /opt/stack/python-glanceclient
git pull
python setup.py build
sudo python setup.py install --force 
cd /opt/stack/python-novaclient
git pull
python setup.py build
sudo python setup.py install --force
cd /opt/stack/python-cinderclient
git pull
python setup.py build
sudo python setup.py install --force
cd /opt/stack/python-keystoneclient
git pull
python setup.py build
sudo python setup.py install --force
cd /opt/stack/python-neutronclient
git pull
python setup.py build
sudo python setup.py install --force
cd /opt/stack/python-swiftclient
git pull
python setup.py build
sudo python setup.py install --force
popd

