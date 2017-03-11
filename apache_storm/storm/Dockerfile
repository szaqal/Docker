FROM ubuntu:16.10


MAINTAINER Pawel Malczyk

RUN apt-get clean &&  apt-get update && apt-get install -y software-properties-common unzip bzip2 wget python libfontconfig1 libfontconfig1-dev
RUN add-apt-repository ppa:webupd8team/java
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN apt-get update && apt-get install -y oracle-java8-installer


#ENV STORM_USER=storm
ENV STORM_CONF_DIR=/conf
ENV STORM_DATA_DIR=/data
ENV STORM_LOG_DIR=/logs

RUN wget "https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2"
RUN bzip2 -d phantomjs-2.1.1-linux-x86_64.tar.bz2
RUN tar -xvf phantomjs-2.1.1-linux-x86_64.tar
RUN cp phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/bin/phantomjs
RUN mkdir -p /root/.embedphantomjs/2.1.1 && cp phantomjs-2.1.1-linux-x86_64/bin/phantomjs /root/.embedphantomjs/2.1.1/phantomjs && chmod +x /root/.embedphantomjs/2.1.1/phantomjs 

ARG DISTRO_NAME=apache-storm-0.10.1

# Download Apache Storm, verify its PGP signature, untar and clean up

RUN set -x \
   && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR" 

RUN set -x \
   && wget  "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz" && tar -xzvf "$DISTRO_NAME.tar.gz" 

WORKDIR $DISTRO_NAME


ENV PATH $PATH:/$DISTRO_NAME/bin

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

