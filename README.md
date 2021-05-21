# WatchBot
Watch Online

# Deploy
Create File /bot/

```
docker run -d \
  -e TZ=Asian/Shanghai \
  -v /bot:/app
  --restart unless-stopped \
  yourwit/watchav:latest
```
