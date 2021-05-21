# 引用镜像
FROM node:8.9.4-alpine

# 执行命令，创建文件夹
RUN mkdir -p /bot

# 将Order目录拷贝到镜像里
ADD ./ /bot

# 指定工作目录
WORKDIR /bot

# 安装依赖
RUN npm install

# 容器启动命令
CMD ["npm", "run test"]