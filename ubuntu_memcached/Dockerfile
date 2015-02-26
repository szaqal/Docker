#docker run -d -p 11211:11211 test/ubuntu_memcached
#docker build -t test/ubuntu_memcached .
FROM ubuntu:14.04
MAINTAINER Pawel Malczyk

RUN apt-get update && apt-get install -y memcached
RUN useradd -m "memcacheduser"

EXPOSE 11211

CMD ["/usr/bin/memcached","-u", "memcacheduser"]
