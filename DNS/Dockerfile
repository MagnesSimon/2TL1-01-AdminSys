# Groupe 1 - Simon Magnes & François Temmerman

FROM ubuntu:18.04

# Mise à jour du système
RUN apt-get update

# Installation de bind9
RUN apt-get install -y bind9
RUN apt-get install -y dnsutils

# On choisit le répértoir
WORKDIR /etc/bind

VOLUME /etc/bind

# Commande qui s'exécute
CMD ["/usr/sbin/names","-g","-c","/etc/bind/named.conf","-u","bind"]
