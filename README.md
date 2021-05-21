# WatchBot
Watch Online

# Deploy
Create File `/bot/bot.json` , fill in your config

```
docker run -d \
  -e TZ=Asian/Shanghai \
  -v /bot:/app
  --restart unless-stopped \
  yourwit/watchav:latest
```
