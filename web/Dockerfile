# Groupe 1 - Simon Magnes & François Temmerman

FROM ubuntu:18.04

# Mettre le système à jour, sinon l'installation d'apache2 ne fonctionne pas
RUN apt-get update 

# Installation d'apache
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils

# copie de ntre site web
COPY woodytoys/homepage.html /var/www/html

EXPOSE 80
ENTRYPOINT ["apache2ctl"]

CMD ["-DFOREGROUND"]

