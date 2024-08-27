# 基于 Node.js 官方镜像
FROM node:14

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json
COPY package*.json ./

# 安装依赖
RUN npm install

# 复制所有文件到工作目录
COPY . .

# 构建应用
RUN npm run build

# 应用运行在 3000 端口
EXPOSE 3000

# 运行应用
CMD ["node", "server.js"]