# 使用官方 Node.js 作为基础镜像
FROM node:lts-alpine3.20

RUN mkdir /app
# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json 到工作目录
COPY package-wechat4u.json ./package.json

# 安装依赖
RUN npm install

RUN npm install -g typescript ts-node

# 运行应用程序
CMD ["ts-node", "/app/index.ts"]