FROM node:7-alpine
#MAINTAINER devops <testxxxx@test.com>
#ADD ./resource /resource
#RUN /resource/chef.sh 
RUN apk add -U subversion
#WORKDIR /data

