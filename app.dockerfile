FROM centos:7.8.2003
RUN yum -y update && yum -y install httpd
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]