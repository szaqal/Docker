#sudo docker build -t test/ftp_srv .


FROM ubuntu:14.04
MAINTAINER Pawel Malczyk  

RUN apt-get update && apt-get -y install vsftpd  

RUN mkdir -p /ftp/shared
RUN chown root:root /ftp/shared

CMD vsftpd

EXPOSE 21
EXPOSE 20
