# --- this is ubuntu trusty 14.04 ----
FROM phusion/baseimage:0.9.16
MAINTAINER Ludwik Bukowski <ludwik.bukowski@gmail.com>
LABEL description="Image apache2 server"

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
ENV HOME /root
RUN  apt-get update &&\ 
     apt-get install -y -q make &&\ 
     apt-get install -y -q php5 &&\
     apt-get install -y -q php5-curl &&\ 
     apt-get install -y -q php5-gd &&\
     apt-get install -y -q imagemagick &&\ 
     apt-get install -y -q php5-imagick &&\
     apt-get install -y -q php5-pgsql &&\
     apt-get install -y -q git mercurial &&\
     apt-get install -y -q libapache2-modsecurity &&\
     apt-get install -y -q curl 

COPY 000-default.conf /etc/apache2/sites-available/
RUN    a2enmod proxy_wstunnel
