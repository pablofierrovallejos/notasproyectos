## Pull the mysql:5.7 image
FROM mysql:5.7

## The maintainer name and email
MAINTAINER Pablo Fierro 

RUN chown -R mysql:root /var/lib/mysql/


ARG MYSQL_DATABASE
#ARG MYSQL_USER
#ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

ENV MYSQL_DATABASE=db_springboot_cloud
#ENV MYSQL_USER=root
#ENV MYSQL_PASSWORD=sasa
ENV MYSQL_ROOT_PASSWORD=sasa

ADD data.sql /etc/mysql/data.sql

##RUN sed -i 's/MYSQL_DATABASE/'$MYSQL_DATABASE'/g' /etc/mysql/data.sql
RUN cp /etc/mysql/data.sql /docker-entrypoint-initdb.d

EXPOSE 3306

#Setting the Environment
#Additionally, we can create an environment variable file as .env in the current path. This file contains all the variables involved in the compose file:
# cat .env
#MYSQL_DATABASE=my_db_name
#MYSQL_USER=baeldung
#MYSQL_PASSWORD=pass
#MYSQL_ROOT_PASSWORD=pass
#MYSQL_PORT=3306