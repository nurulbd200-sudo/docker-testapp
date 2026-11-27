FROM node:22-alpine

WORKDIR /testapp

ENV MONGO_DB_USERNAME=admin
ENV MONGO_DB_PWD=qwerty

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5050

CMD ["node", "server.js"]