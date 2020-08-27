FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install apache2 -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install php -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install postfix -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install dovecot-imapd dovecot-pop3d -y

RUN DEBIAN_FRONTEND=noninteractive apt-get install wget unzip -y
RUN wget https://sourceforge.net/projects/squirrelmail/files/stable/1.4.22/squirrelmail-webmail-1.4.22.zip
RUN unzip squirrelmail-webmail-1.4.22.zip
RUN mv squirrelmail-webmail-1.4.22 /var/www/html/
RUN chown -R www-data:www-data /var/www/html/squirrelmail-webmail-1.4.22/
RUN chmod 755 -R /var/www/html/squirrelmail-webmail-1.4.22/
RUN mv /var/www/html/squirrelmail-webmail-1.4.22/ /var/www/html/squirrelmail

COPY config.php /var/www/html/squirrelmail/config/config.php
COPY mailname /etc/mailname
COPY runservices.sh /etc/runservices.sh
COPY main.cf /etc/postfix/main.cf

#cree user
RUN useradd -p $(openssl passwd -1 temmerman) temmerman.francois 
RUN usermod -m -d /var/www/html/temmerman.francois temmerman.francois
RUN mkdir -p /var/www/html/temmerman.francois
RUN chown -R temmerman.francois:temmerman.francois /var/www/html/temmerman.francois

RUN useradd -p $(openssl passwd -1 contact) contact
RUN usermod -m -d /var/www/html/contact contact
RUN mkdir -p /var/www/html/contact
RUN chown -R contact:contact /var/www/html/contact


#suppression msg d'erreur apache2
RUN echo "ServerName mail.wt1-1.ephec-ti.be" | tee /etc/apache2/conf-available/servername.conf

RUN chmod +x /etc/runservices.sh

EXPOSE 25 110 143 465 587 993 995
CMD /etc/runservices.sh
