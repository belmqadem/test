FROM debian:bullseye
RUN apt update -y && apt upgrade -y && apt install -y nginx
COPY static/ /var/www/
COPY conf/nginx.conf /etc/nginx/nginx.conf
CMD ["nginx", "-g", "daemon off;"]