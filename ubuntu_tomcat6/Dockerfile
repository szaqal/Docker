FROM ubuntu:14.04

MAINTAINER Pawel Malczyk

RUN apt-get update && apt-get install -y wget && apt-get install unzip

ADD http://ftp.ps.pl/pub/apache/tomcat/tomcat-6/v6.0.43/bin/apache-tomcat-6.0.43.tar.gz /opt/tomcat6.tar.gz
ADD jdk6.bin /opt/jdk6.bin
ADD jce.zip /opt/jce.zip

RUN tar xzf /opt/tomcat6.tar.gz -C /opt
RUN rm -f /opt/tomcat6.tar.gz
RUN cd /opt && ./jdk6.bin 
RUN rm -f /opt/java.bin
RUN unzip /opt/jce.zip -d /opt/jce
RUN cp -rf /opt/jce/jce/*jar /opt/jdk1.6.0_45/jre/lib/security

ENV JAVA_HOME /opt/jdk1.6.0_45
ENV CATALINA_HOME /opt/apache-tomcat-6.0.43

ADD tomcat-users.xml /opt/apache-tomcat-6.0.43/conf/tomcat-users.xml

EXPOSE 8080
VOLUME /opt/apache-tomcat-6.0.43/logs

CMD /opt/apache-tomcat-6.0.43/bin/startup.sh; tail -f /opt/apache-tomcat-6.0.43/logs/catalina.out
