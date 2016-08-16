# --- this is ubuntu trusty 14.04 ----
FROM httpd:2.4
MAINTAINER Ludwik Bukowski <ludwik.bukowski@gmail.com>
LABEL description="Image apache2 server"

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN apt-get update && \
    apt-get -y install sudo
ENV HOME /root
RUN sudo apt-get update && sudo apt-get install -y &&\ 
    sudo apt-get install -y -q make &&\ 
    sudo apt-get install -y -q php5 &&\
    sudo apt-get install -y -q php5-curl &&\ 
    sudo apt-get install -y -q php5-gd &&\
    sudo apt-get install -y -q imagemagick &&\ 
    sudo apt-get install -y -q php5-imagick &&\
    sudo apt-get install -y -q php5-pgsql &&\
    sudo apt-get install -y -q git mercurial &&\
    sudo apt-get install -y -q libapache2-modsecurity &&\
    sudo apt-get install -y -q curl 

COPY 000-default.conf /etc/apache2/sites-available/
RUN    a2enmod proxy_wstunnel
