FROM python:3.6

LABEL maintainer="Jext Community, https://github.com/jextop"

# copy code, compile and package
WORKDIR /

RUN git --version; \
	git clone https://gitee.com/jiekebu/jeewx-app-cms.git code; \
	cd code; \
	ls -al

WORKDIR /etc/nginx

EXPOSE 80
