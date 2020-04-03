FROM httpd:2.4
MAINTAINER arun arun.khatwani79@gmail.com
LABEL n1.amis.smeetsm.httpd.name="Apache Httpd" nl.amis.smeetsm.httpd.version="2.4"
ARG PORT
RUN sed -ri "s/^Listen 80/Listen $PORT/g" /usr/local/apache2/conf/httpd.conf
ENTRYPOINT ["httpd-foreground"]


