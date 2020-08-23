# Groupe 1 - Simon Magnes & François Temmerman

FROM ubuntu:18.04

# Mise à jour du système
RUN apt-get update

# Installation de bind9
RUN apt-get install -y bind9
RUN apt-get install -y dnsutils
RUN apt-get install -y bind9utils
RUN apt-get install -y bind9-doc

# Activation de IPv4
RUN sed -i 's/OPTIONS=.*/OPTIONS="-4 -u bind"/' /etc/default/bind9

# On copie les fichier de configuration
COPY db.internal.wt1-1.ephec-ti.be /etc/bind/
COPY db.wt1-1.ephec-ti.be /etc/bind/
COPY named.conf /etc/bind/
COPY named.conf.local /etc/bind/
COPY named.conf.options /etc/bind/
COPY named.conf.default-zones /etc/bind

# Run eternal loop
#CMD ["/bin/bash", "-c", "while :; do sleep 10; done"]

EXPOSE 53

CMD named -g

