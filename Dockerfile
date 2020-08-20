FROM nginx:latest

LABEL maintainer="Jext Community, https://github.com/jextop"

# get code, compile and package
WORKDIR /

RUN apt update; \
	apt -y install git; \
	git --version; \
	git clone https://gitee.com/jiekebu/jeewx-app-cms.git code; \
	cd code; \
	ls -al

WORKDIR /etc/nginx

EXPOSE 80
