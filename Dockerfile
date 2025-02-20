FROM node:14-alpine

WORKDIR /code

CMD git pull

# 把代码置于镜像
ADD . /code

# 装包
RUN yarn

EXPOSE 3000

# 启动 Node Server
CMD npm start
