FROM centos:latest
MAINTAINER cjmas777@gmail.com
RUN yum install -y https \ zip \ unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page282/pro.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf Markups-kindle/* .
RUN rm -rf _MACOSX markups-kindle kindle.zip
CMD ["/user/sbin/httpd", "-D" "FOREGROUND"]
expose 80
