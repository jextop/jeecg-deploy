FROM registry.cn-shanghai.aliyuncs.com/jext/starter_api_base:latest

LABEL maintainer="Jext Community, https://github.com/jextop"

# copy code
COPY ./ /code
WORKDIR /code

# package and copy files
RUN cd /; \
    git clone https://gitee.com/jiekebu/jeecg-boot.git code_tmp; \
    cd code_tmp; \
    git checkout cv; \
    mv ./jeecg-boot/* /code; \
    \
    cd /code; \
    sh mvnw package --settings ./settings.xml -Dmaven.test.skip=true; \
    mv ./deploy/ /deploy; \
    mv ./jeecg-boot-module-system/target/jeecg-boot-module-system-2.2.1.jar /deploy; \
    \
    cd /; \
    rm -rf /code; \
    rm -rf /code_tmp

WORKDIR /deploy

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

CMD java -Djava.security.egd=file:/dev/./urandom -jar jeecg-boot-module-system-2.2.1.jar

EXPOSE 8080
