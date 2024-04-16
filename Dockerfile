FROM ubuntu:latest

RUN apt-get update && apt-get install -y apache2

RUN apt-get install -y mysql-server

EXPOSE 80 3306

CMD ["usr/sbin/apache2ctl", "-D", "FOREGROUND"]
CMD ["usr/bin/mysqld_safe"]
