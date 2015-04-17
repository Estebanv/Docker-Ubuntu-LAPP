###
#
# Ultima version de ubuntu disponible con stack WAPP instalado.
# Autor: Estebanv
#	
##

FROM ubuntu:14.10
MAINTAINER attentiondeficit@gmail.com

RUN apt-get update 

RUN apt-get upgrade -y 

RUN apt-get install -y openssh-server 

RUN apt-get install -y apache2 

RUN apt-get install -y supervisor

RUN apt-get install -y postgresql

RUN apt-get install -y php5

RUN apt-get install -y php5-pgsql

RUN apt-get install -y subversion

COPY conf/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 22 80

CMD ["/usr/bin/supervisord"]






