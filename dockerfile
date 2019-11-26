FROM centos
MAINTAINER devops <testxxxx@test.com>
ADD ./resource /resource
RUN /resource/chef.sh 
WORKDIR /data

