FROM registry.cn-shanghai.aliyuncs.com/jext/starter_db_base:latest

LABEL maintainer="Jext Community, https://github.com/jextop"

# get code, copy SQL file
RUN cd /; \
    git clone https://gitee.com/jiekebu/jeecg-boot.git code; \
    cd code; \
    git checkout flyway; \
    \
    cd ./jeecg-boot/db; \
    mv ./jeecgboot-mysql-5.7.sql /docker-entrypoint-initdb.d; \
    \
    cd /; \
    rm -rf /code

ENV TZ=Asia/Shanghai

RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
