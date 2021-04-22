FROM docker.io/library/centos
MAINTAINER Godhot Prakosa <godhot.prakosa@gmail.com>
RUN yum install -y httpd && yum clean all
EXPOSE 80
COPY ./src/ /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
