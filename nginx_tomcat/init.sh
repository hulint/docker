#!/bin/sh

#run nginx test & start nginx
/usr/sbin/nginx -t && /usr/sbin/nginx

#run tomcat
exec /bin/sh /usr/local/tomcat/bin/catalina.sh run


