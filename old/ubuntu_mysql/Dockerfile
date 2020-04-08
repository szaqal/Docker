#sudo docker build -t test/ubuntu_mysql .
#sudo docker run -d -p 3307:3306 test/ubuntu_mysql
FROM ubuntu:14.04
MAINTAINER Pawel Malczyk
RUN apt-get update && apt-get -y install mysql-server

RUN apt-get -y install mysql-client mysql-server
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

RUN /usr/sbin/mysqld & \
    sleep 10s &&\
    echo "GRANT ALL ON *.* TO admin@'%' IDENTIFIED BY 'changeme' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql


EXPOSE 3306

CMD ["/usr/bin/mysqld_safe"]
