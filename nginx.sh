#!/bin/bash

rm -rf /usr/local/nginx/conf/cert
rm -rf /usr/local/nginx/conf/vhost

mkdir -p /usr/local/nginx/conf/cert/
mv -f ./ssl/* /usr/local/nginx/conf/cert/

mkdir -p /usr/local/nginx/conf/vhost/
mv -f ./vhost/* /usr/local/nginx/conf/vhost/

mv -f nginx.conf /usr/local/nginx/conf/
/usr/local/nginx/sbin/nginx -s reload
