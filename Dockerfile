
# Groupe 1 - Simon Magnes & François Temmerman

# Install apache

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get check 
RUN apt-get dist-upgrade -y
RUN apt-get install -y apache2
RUN apt-get install php7.0
RUN apt-get install libapache2-mod-php7.0
RUN apt-get update
RUN apt-get install -y php-mysql
RUN apt-get install -y curl

# Enable apache mods

RUN a2enmod php7.0
# Enable apache mods.
RUN a2enmod php7.0
RUN a2enmod rewrite
RUN a2enmod ssl


# Manually set up the apache environment variables

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid


RUN sed -i -e 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' /etc/php/7.0/fpm/php.ini



# Copy files
ADD www /var/www/site

# Available sites
ADD www.wt2.ephec-ti.be.conf /etc/apache2/sites-available/default
ADD b2b.wt2.ephec-ti.be.conf /etc/apache2/sites-available
ADD intranet.wt2.ephec-ti.be.conf /etc/apache2/sites-available

# Enabled sites
ADD www.wt2.ephec-ti.be.conf /etc/apache2/sites-enabled/000-default.conf
ADD b2b.wt2.ephec-ti.be.conf /etc/apache2/sites-enabled
ADD intranet.wt2.ephec-ti.be.conf /etc/apache2/sites-enabled


# Expose
EXPOSE 80 443


CMD /usr/sbin/apache2ctl -D FOREGROUND
