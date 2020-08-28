FROM ubuntu:18.04
env DEBIAN_FRONTEND=noninteractive


RUN apt-get update -y  
#RUN apt install dovecot-common
RUN apt-get install -y dovecot-imapd dovecot-pop3d 
#RUN apt-get install dovecot-imapd
#RUN apt-get install dovecot-pop3d
RUN apt-get install postfix mailutils  -y
RUN apt-get -y install nano
#RUN rm /etc/postfix/main.cf
#RUN rm /etc/dovecot/conf.d/10-ssl.conf
#RUN rm /etc/dovecot/conf.d/10-master.conf
#RUN rm /etc/dovecot/conf.d/10-mail.conf
#RUN rm /etc/dovecot/conf.d/10-auth.conf

RUN adduser contact

#copie vps vers le container
COPY ./Postfix/main.cf /etc/postfix/
COPY ./Dovecot/10-ssl.conf /etc/dovecot/conf.d/
COPY ./Dovecot/10-master.conf /etc/dovecot/conf.d/
COPY ./Dovecot/10-mail.conf /etc/dovecot/conf.d/



#Ports exposes
EXPOSE 25 143 993 110 995 

CMD ["service dovecot restart && service postfix restart"]

