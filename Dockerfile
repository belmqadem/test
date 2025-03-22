FROM debian:bullseye
RUN apt update -y && apt upgrade -y && apt install -y nginx
COPY static/ /var/www/html/
RUN mkdir -p /var/www/uploads/
COPY uploads/ /var/www/uploads/
COPY conf/nginx.conf /etc/nginx/nginx.conf
CMD ["nginx", "-g", "daemon off;"]