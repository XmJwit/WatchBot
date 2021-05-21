FROM keymetrics/pm2:latest-alpine

RUN mkdir -p /bot
WORKDIR /bot
COPY . /bot
ENV NPM_CONFIG_LOGLEVEL warn
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone
RUN npm install
CMD [ "pm2-docker", "start", "pm2.json" ]
