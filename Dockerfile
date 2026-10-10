FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /var/opt/nginx
COPY index.html /var/opt/nginx/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
