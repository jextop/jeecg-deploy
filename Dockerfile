FROM registry.cn-shanghai.aliyuncs.com/jext/starter_admin_base:latest

LABEL maintainer="Jext Community, https://github.com/jextop"

# get code, compile and package
WORKDIR /

RUN apt -y install git; \
	git --version; \
	git clone https://gitee.com/jiekebu/jeewx-app-cms.git code_tmp; \
	mv ./code_tmp/* ./code; \
	cd code; \
	ls -al; \
	\
	cnpm install; \
    yarn run build; \
    ls ./dist

WORKDIR /etc/nginx

EXPOSE 80
