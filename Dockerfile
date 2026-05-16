FROM node:22-slim

ENV PORT=3000 \
    NODE_ENV=production \
    DOMAIN=http://localhost:3000 \
    STATIC_DIR="./client" 

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD ["node", "server.js"]

