FROM centos
VOULME /data
ENV TEST=4.5.0
MAINTAINER devops <testxxxx@test.com>
ADD ./resource /resource
RUN /resource/chef.sh && rm -rf /resource
WORKDIR /data

