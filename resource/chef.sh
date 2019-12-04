#!/bin/sh

yum update 
cd /resource
yum install -y wget 
wget https://packages.chef.io/files/stable/chefdk/$TEST/el/8/chefdk-$TEST-1.el7.x86_64.rpm
rpm -ivh chefdk-$TEST-1.el7.x86_64.rpm

