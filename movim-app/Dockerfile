FROM movim/base
MAINTAINER Ludwik Bukowski <ludwik.bukowski@erlang-solutions.com>
LABEL description="Image containing movim application"
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
ENV HOME /root
RUN sudo apt-get update && sudo apt-get install -y -q curl &&\
    cd /var/www/ &&\
    git clone https://github.com/movim/movim.git &&\
    cd movim &&\
    curl -sS https://getcomposer.org/installer | php &&\
    php composer.phar install
RUN    a2enmod proxy_wstunnel
COPY db.inc.php /var/www/movim/config/
COPY start_server.sh /home
