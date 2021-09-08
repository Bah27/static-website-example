#FROM ubuntu
FROM nginx:alpine
#RUN apt-get update
#RUN apt-get install nginx -y
ADD static-website-example/ /var/www/html/
#RUN useradd -m myuser
#USER myuser
COPY nginx.conf /etc/nginx/conf.d/default.conf
CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
