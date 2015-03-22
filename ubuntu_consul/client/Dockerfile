FROM ubuntu:14.04
MAINTAINER Pawel Malczyk

RUN apt-get update && apt-get -y install unzip && apt-get install -y wget
RUN mkdir -p /opt/consul
RUN wget http://dl.bintray.com/mitchellh/consul/0.5.0_linux_amd64.zip 
RUN unzip 0.5.0_linux_amd64.zip -d /opt/consul
