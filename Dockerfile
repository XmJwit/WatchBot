FROM keymetrics/pm2:latest-slim

RUN mkdir -p /bot
RUN apt-get install python3
WORKDIR /bot
COPY . /bot
ENV NPM_CONFIG_LOGLEVEL warn
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone
RUN npm install --python=python3 --production
CMD [ "pm2-docker", "start", "pm2.json" ]
