FROM ubuntu:14.04
MAINTAINER Pawel Malczyk

RUN apt-get update && apt-get -y install unzip && apt-get install -y wget
RUN mkdir -p /opt/consul/config
RUN mkdir -p /opt/consul/logs
RUN wget http://dl.bintray.com/mitchellh/consul/0.5.0_linux_amd64.zip 
RUN unzip 0.5.0_linux_amd64.zip -d /opt/consul

ADD consul.conf /opt/consul/config/consul.conf

CMD /opt/consul/consul agent -client=0.0.0.0 -bind=0.0.0.0 -config-file=/opt/consule/config/consul.conf -config-dir=/opt/consul/conf
