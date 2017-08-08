FROM ubuntu:14.04


RUN apt-get clean \
	&& apt-get update \
	&&  apt-get install -y \
	xvfb \
  	x11-xkb-utils \
  	xfonts-100dpi \
  	xfonts-75dpi \
  	xfonts-scalable \
  	xfonts-cyrillic \
  	x11-apps \
  	clang \
  	libdbus-1-dev \
  	libgtk2.0-dev \
  	libnotify-dev \
  	libgnome-keyring-dev \
  	libgconf2-dev \
  	libasound2-dev \
  	libcap-dev \
  	libcups2-dev \
  	libxtst-dev \
  	libxss1 \
  	libnss3-dev \
  	gcc-multilib \
  	g++-multilib

RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN apt-get update && apt-get install -y nodejs

# Add nightmare js files
RUN [ -d /nightmarejs ] || mkdir /nightmarejs 
VOLUME /nightmarejs

COPY entrypoint.sh /entrypoint
RUN chmod +x /entrypoint

ADD example.js /nightmarejs

RUN cd /nightmarejs && npm install nightmare

ENTRYPOINT ["/entrypoint"]
