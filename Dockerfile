# 1. Dùng Node image nhẹ
FROM node:18-slim

# 2. Biến môi trường
ENV NODE_ENV=production

# 3. Thư mục làm việc
WORKDIR /app

# 4. Cài git
RUN apt update && apt install -y git && rm -rf /var/lib/apt/lists/*

# 5. Clone source code
RUN git clone https://github.com/hoanqson2107/node.ai.git .

# 6. Cài dependency
RUN npm install

# 7. Mở cổng (đổi nếu app bạn dùng cổng khác)
EXPOSE 3000

# 8. Lệnh chạy app
CMD ["npm", "start"]
