FROM ubuntu:latest

RUN apt-get update
RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y tzdata \
    && ln -sf /usr/share/zoneinfo/Europe/Sofia /etc/localtime \
    && dpkg-reconfigure --frontend noninteractive tzdata

RUN apt-get install php php-mysql php-cgi libapache2-mod-php -y \
    && a2enmod rewrite && service apache2 restart

EXPOSE 80 443

#CMD "/bin/bash"
CMD /usr/sbin/apache2ctl -D FOREGROUND