FROM node:8 as build

WORKDIR /app

COPY index.js bot.json package.json pm2.json ./

RUN npm install

FROM gcr.io/distroless/nodejs

COPY --from=build /app /

CMD ["pm2", "start pm2.json"]