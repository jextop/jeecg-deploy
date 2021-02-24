#!/bin/bash

yum install docker docker-compose -y 

systemctl enable docker 

service docker start

docker login --username=羚驾科技 registry.cn-shanghai.aliyuncs.com --password ljkj@1604
