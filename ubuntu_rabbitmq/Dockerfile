#docker run -d -p 15672:15672 -p 5672:5672 test/rabbit_mq
#docker build -t test/rabbit_mq .
FROM ubuntu:14.04
MAINTAINER Pawel Malczyk

RUN apt-get update && apt-get install -y rabbitmq-server
RUN rabbitmq-plugins enable rabbitmq_management

EXPOSE 15672
EXPOSE 5672

CMD ["/usr/sbin/rabbitmq-server"]
