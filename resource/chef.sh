#!/bin/sh

yum update 
cd /resource
yum install -y wget 
wget https://packages.chef.io/files/stable/chefdk/4.5.0/el/8/chefdk-4.5.0-1.el7.x86_64.rpm
rpm -ivh chefdk-4.5.0-1.el7.x86_64.rpm
#VERSION=4.5.0
