FROM nginx:1.27-alpine

RUN rm /etc/nginx/nginx.conf /etc/nginx/mime.types

COPY nginx.conf /etc/nginx/nginx.conf
COPY mime.types /etc/nginx/mime.types
COPY default /etc/nginx/sites-enabled/default

EXPOSE 80 443

CMD nginx
