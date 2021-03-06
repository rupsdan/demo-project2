FROM centos:latest
MAINTAINER rupam.dandage@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://https://www.free-css.com/assets/files/free-css-templates/download/page264/lion.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip lion.zip
RUN cp -rvf lion/* .
RUN rm -rf lion lion.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
