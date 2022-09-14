FROM centos:latest
MAINTAINER cjmas777@gmail.com
RUN yum install -y https \ zip \ unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page282/pro.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip pro.zip
RUN cp -rvf pro-html/* .
RUN rm -rf pro-html pro.zip
CMD ["/user/sbin/httpd", "-D" "FOREGROUND"]
expose 80
