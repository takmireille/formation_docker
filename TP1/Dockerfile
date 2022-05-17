FROM ubuntu:20.04
#MAINTAINER mireille (nzonteumireille@gmail.com)

RUN apt-get update 

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git


EXPOSE 80

RUN rm -Rf /var/www/html/*

RUN git clone https://github.com/takmireille/formation_docker.git /var/www/html/



ENTRYPOINT ["/usr/sbin/nginx", "-g", "deamon off"]



