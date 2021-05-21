FROM node:8 as build

WORKDIR /app

COPY index.js bot.json package.json pm2.json ./

RUN npm install

FROM node:8-alpine

COPY --from=build /app /

CMD ["pm2", "start pm2.json"]
