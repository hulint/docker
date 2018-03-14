FROM tomcat:8.5.29-jre8-alpine
MAINTAINER pazel <hulint@xlgames.com>
# install nginx!
RUN apk update && apk add nginx
COPY ./conf/nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./conf/nginx/conf.d/* /etc/nginx/conf.d/

RUN rm -rf /usr/local/tomcat/webapps/*
ADD /source/* /usr/local/tomcat/webapps/
COPY /conf/tomcat/server.xml /usr/local/tomcat/conf/server.xml

EXPOSE 80

COPY ./init.sh /init.sh
ENTRYPOINT ["/init.sh"]
