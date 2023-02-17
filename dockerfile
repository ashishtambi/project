FROM centos:latest
RUM yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page287/eflyer.zip /var/www/html
WORKDIR /var/www/html
RUN unzip eflyer.zip
RUN rm-rf eflyer.zip &&\
   cp -rf html/* . &&\
   rm -rf html &&\
   EXPOSE 80
   CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]
