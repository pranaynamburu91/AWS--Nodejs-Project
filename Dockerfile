FROM ubuntu:latest

ENV DOMAIN="http://localhost:3000" \
PORT=3000 \
STATIC_DIR="./client"

WORKDIR /app

COPY package*.json ./

COPY . .

EXPOSE 8080

CMD ["npm run", "server.js"]