# this is simple image
FROM php:7.2-apache

LABEL maintainer="Sujal Patel <sujalpatel022@gmail.com>"

# Enable apache mods.
#RUN a2enmod php7.0
RUN a2enmod rewrite

WORKDIR /var/www/html

ADD . /var/www/html

EXPOSE 80

ADD apache-config.conf /etc/apache2/sites-enabled/000-default.conf

CMD /usr/sbin/apache2ctl -D FOREGROUND
