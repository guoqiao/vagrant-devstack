# vagrant-devstack

setup devstack env in vagrant.

## Steps

### host setup

bootstrap.sh

### vagrant vm

Create a Vagrantfile: vagrant init

Update vm memory and cpus.
choose private_network with IP
update HOST_IP in local.conf

vagrant up
settings -> network -> adaptor 2 -> allow all

./stack.sh

## Issues

stack.sh will fail on wrapt, simlejson, 2 solutions:

1) devstack/inc/python#L198: $cmd_pip $upgrade -I
2) sudo apt purge python3-simplejson python3-wrapt --> preferred, but not tested
