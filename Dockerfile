from httpd:2.4

MAINTAINER vinay <vinay@shrigowri.com>

COPY linshare-ui-user /usr/local/apache2/htdocs/linshare-ui-user
COPY ./httpd.extra.conf /usr/local/apache2/conf/extra/httpd.extra.conf
RUN cat /usr/local/apache2/conf/extra/httpd.extra.conf >> /usr/local/apache2/conf/httpd.conf

COPY ./linshare-ui-user.conf /usr/local/apache2/conf/extra/linshare-ui-user.conf

EXPOSE 80
