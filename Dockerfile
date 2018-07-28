FROM ubuntu

RUN  apt-get update
RUN  apt-get -y install nginx
RUN  service nginx stop

COPY index.html /var/www/html/index.html

ENTRYPOINT  nginx  -c /etc/nginx/nginx.conf -g "daemon off;"



