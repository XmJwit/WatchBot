FROM node:10-alpine

ADD . /app

WORKDIR /app

RUN npm install

CMD ["pm2", "start pm2.json"]
