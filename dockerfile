FROM centos:7.8.2003
LABEL MAINTAINER="mt240784@fi365.ort.edu.uy"
RUN yum -y update && yum install -y httpd
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
#CMD ["/bin/bash", "-c", "/usr/sbin/httpd", "-D", "FOREGROUND"] #con CMD
