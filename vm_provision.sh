#!/bin/bash
set -xue

LINE="source /vagrant/devstack/openrc admin demo"
(! grep "$LINE" ~/.bashrc) && echo "$LINE" >> ~/.bashrc

LINE="source /vagrant/openstack-aliases"
(! grep "$LINE" ~/.bashrc) && echo "$LINE" >> ~/.bashrc


sudo apt-get update
sudo apt-get install -y vim htop tree wget curl silversearcher-ag
sudo apt-get install -y python3-dev python3-pip python3-apt
sudo apt-get purge -y python3-simplejson python3-wrapt
sudo python3 -m pip install -U pip
sudo python3 -m pip install -U ansible
