FROM node:10.11-alpine

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 8080

CMD [ "sh", "-c", "node server.js > logs.txt 2>&1"]