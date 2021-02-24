# 阿里云效DevOps，自动化流水线：代码、构建、部署

- pc:80, oss
- admin:8010
- api:8080

- dba:8081
- db:3306 MySQL
- cache:6379 Redis
- mq: 61613 ActiveMQ

## Ali DevOps Flow
```
mkdir -p /root/deploy
cd /root/deploy

tar zxvf /home/admin/app/package.tgz -C /root/deploy

chmod +x *.sh

# ./install_docker.sh
# ./config_rc_local.sh
docker-compose pull
docker-compose up -d

# ./install_nginx.sh
# ./config_nginx.sh
./nginx.sh
```

# docker

yum install docker docker-compose

# nginx

whereis nginx

netstat -anop | grep 0.0.0.0:80
ll  /proc/4562/exe

/usr/local/nginx/sbin/nginx -t
/usr/local/nginx/conf/nginx.conf

# nginx.conf
```
server {
	listen 443 ssl;
	server_name api.jextop.top;

	root html;
	index index.html index.htm;

	ssl_certificate cert/4636948_www.jextop.top.pem;
	ssl_certificate_key cert/4636948_www.jextop.top.key;

	ssl_session_timeout 5m;
	ssl_ciphers ECDHE-RSA-AES128-GCM-SHA256:ECDHE:ECDH:AES:HIGH:!NULL:!aNULL:!MD5:!ADH:!RC4;
	ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
	ssl_prefer_server_ciphers on;

	location / {
		root html;
		index index.html index.htm;
    }
}
```

# HTTPS server
```
server {
    listen       443 ssl;
    server_name  api.jextop.top;

    ssl_certificate      4636948_www.jextop.top.pem;
    ssl_certificate_key  4636948_www.jextop.top.key;

    ssl_session_timeout  5m;
    ssl_session_cache    shared:SSL:1m;

    ssl_ciphers  HIGH:!aNULL:!MD5;
    ssl_prefer_server_ciphers  on;

    location / {
        root   html;
        index  index.html index.htm;
    }
}
```
