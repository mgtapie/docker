FROM centos:7.8.2003
RUN yum -y update && yum install -y httpd
RUN echo "trabajando con ECS" > /var/www/html/index.html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]