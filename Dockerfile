FROM node:22-slim

ENV DOMAIN = "http://localhost:8080"\
PORT=3000 \ 
STATIC_DIR="./client"

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD ["node", "server.js"]

