FROM httpd:2.4

RUN echo "Include conf/extra/virtualhost.conf" >> /usr/local/apache2/conf/httpd.conf

COPY ./docker/apache/virtualhost.conf /usr/local/apache2/conf/extra/

COPY ./public/ /var/www/public/