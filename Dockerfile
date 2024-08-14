# 使用官方的 Node 镜像作为基础镜像
FROM registry.cn-beijing.aliyuncs.com/hub-mirrors/node:14
 
# 在容器内创建一个目录作为应用程序的根目录
WORKDIR /app
 
# 将应用程序的 package.json 和 package-lock.json 复制到容器中
COPY package*.json ./
 
# 安装应用程序的依赖
RUN npm install
 
# 将应用程序的源代码复制到容器中
COPY . .
 
# 暴露容器端口
EXPOSE 3000
 
# 运行应用程序,设置容器的默认命令
CMD ["node", "express.js"]
