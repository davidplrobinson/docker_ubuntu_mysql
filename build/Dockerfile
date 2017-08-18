FROM w3serv/ubuntu:base
MAINTAINER david.pl.robinson@googlemail.com

RUN apt-get update

RUN apt-get update
RUN export DEBIAN_FRONTEND="noninteractive"
RUN echo "mysql-server mysql-server/root_password password changeme" | debconf-set-selections
RUN echo "mysql-server mysql-server/root_password_again password changeme" | debconf-set-selections
RUN apt-get install -y mysql-server

COPY startup.sh /tmp/mysql_run.sh
RUN chmod +x /tmp/mysql_run.sh

ENTRYPOINT ["/tmp/mysql_run.sh"]

EXPOSE 3306
