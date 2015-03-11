#Holds root CA configuration
#sudo docker build -t test/ubuntu_ca .
#sudo docker run -d -p 3307:3306 test/ubuntu_ca
FROM ubuntu:14.04

MAINTAINER Pawel Malczyk
ENV TERM xterm

RUN apt-get update && apt-get install -y readline-common &&  apt-get install openssl
RUN mkdir -p /openssl/certs
RUN mkdir -p /openssl/conf

#Private key
RUN openssl genrsa -des3 -passout pass:dupa1234 -out /openssl/certs/rootCA.key
#Self-sign
RUN openssl req -x509 -new -nodes -passin pass:dupa1234 -key /openssl/certs/rootCA.key -days 1024 -out /openssl/certs/rootCA.pem

ENV OPENSSL_CONF=/openssl/conf/openssl.cnf
