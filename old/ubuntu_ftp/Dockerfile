#sudo docker build -t test/ftp_srv .
#docker run -d -p 21:21 test/ftp_srv


FROM ubuntu
MAINTAINER Pawel Malczyk  

RUN apt-get update && apt-get -y install vsftpd  

RUN mkdir -p /ftp/shared
RUN chown root:root /ftp/shared
RUN mkdir -p /var/run/vsftpd/empty
RUN chmod 700 /var/run/vsftpd/empty
RUN echo "anonymous_enable=YES" >> /etc/vsftpd.conf

CMD vsftpd

EXPOSE 21
EXPOSE 20
