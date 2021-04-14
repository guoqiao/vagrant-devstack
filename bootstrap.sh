#!/bin/bash
set -xue

sudo apt-get update -y
sudo apt-get install -y virtualbox vagrant libvirt-dev
sudo apt-get install -y python3-apt aptitude

vagrant plugin install vagrant-hostmanager
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-disksize
vagrant plugin install vagrant-cachier
vagrant plugin install --plugin-version ">= 0.0.31" vagrant-libvirt

git clone https://github.com/openstack/devstack.git || true

(cd devstack; git pull; ln -fs ../local.conf local.conf)
