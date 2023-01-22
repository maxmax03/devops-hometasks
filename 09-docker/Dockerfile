FROM debian:latest

RUN apt-get update && \
    apt-get install -y  apache2 php libapache2-mod-php &&\
    apt clean
   
ADD https://raw.githubusercontent.com/maxmax03/devops-hometasks/main/02-lxc/index.php /var/www/html/

RUN chmod 755 /var/www/html/index.php && \
    rm -f /var/www/html/index.html
    
EXPOSE 80

CMD /usr/sbin/apache2ctl -D FOREGROUND