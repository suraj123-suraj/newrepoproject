FROM centos
MAINTAINER sspawar113@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/summer.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip summer.zip
RUN cp -rv summer/* .
RUN rm -rf summer summer.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
