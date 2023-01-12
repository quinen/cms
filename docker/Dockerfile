FROM php:8.2-apache
##  extensions php & composer
#COPY --from=mlocati/php-extension-installer:latest /usr/bin/install-php-extensions /usr/local/bin/
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer
##  installation apps + extensions (separé pour creer un point d'ancrage)
RUN apt-get update && \
    # indispensable
    #apt-get install -y git openssh-client unzip rsyslog redis-server && \
    # bonus
    apt-get install -y nano # && \
    #install-php-extensions redis xdebug

##  config apache + hosts
RUN rm /etc/localtime && ln -s /usr/share/zoneinfo/Europe/Paris /etc/localtime && \
    echo "ServerName localhost" >> /etc/apache2/apache2.conf && \
    #sed -ri -e 's!/var/www/html!/var/www/html/public!g' /etc/apache2/sites-enabled/000-default.conf && \
    a2enmod rewrite headers # && \
    # config syslog
    #sed -i '/imklog/s/^/#/' /etc/rsyslog.conf

COPY .. /var/www/html
WORKDIR /var/www/html

## nice to have
RUN echo 'alias ll="ls -la"' >> ~/.bashrc

CMD docker/bootstrap.sh
