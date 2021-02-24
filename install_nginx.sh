#!/bin/bash

wget http://nginx.org/download/nginx-1.10.3.tar.gz

tar -xvf nginx-1.10.3.tar.gz

cd nginx-1.10.3

./configure --prefix=/usr/local/nginx --with-http_ssl_module
make
make install

cd /usr/local/nginx/sbin/

./nginx -V
./nginx -t
./nginx

netstat -ntlp
