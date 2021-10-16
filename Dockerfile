FROM centos
RUN yum update -y
RUN yum install epel-release -y
RUN yum install nginx -y
COPY ~/index.html /root
RUN chmod 755 /root/index.html
RUN mv /root/index.html /usr/share/nginx/html/
RUN systemctl enable nginx

