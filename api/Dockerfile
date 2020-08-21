FROM registry.cn-shanghai.aliyuncs.com/jext/starter_api_base:latest

LABEL maintainer="Jext Community, https://github.com/jextop"

# copy code
COPY ./ /code
WORKDIR /code

# package and copy files
RUN cd /; \
    git clone https://gitee.com/jiekebu/jeecg-boot.git code_tmp; \
  	mv /code_tmp/* /code; \
  	cd code; \
  	ls -al; \
  	\
    cd jeecg-boot; \
    ls -al; \
  	\
	sh mvnw package -Dmaven.test.skip=true; \
    \
    mv ./deploy/ /deploy; \
    mv ./jeecg-boot-module-system/target/jeecg-boot-module-system-2.2.1.jar /deploy; \
    \
    cd /; \
    rm -rf /code; \
    ls -al

WORKDIR /deploy

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

CMD sleep 60; java -Djava.security.egd=file:/dev/./urandom -jar jeecg-boot-module-system-2.2.1.jar

EXPOSE 8080
