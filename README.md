# wechat4u-docker
dockerfile for wechat4u


  wechaty:
    image: ericcug/wechat4u:latest
    restart: unless-stopped
    network_mode: "host"
    container_name: wechaty
    volumes:
      - /data/wechaty/bot-wechat4u.ts:/app/index.ts
      - /data/wechaty/memory-card.json:/app/wechaty-push-bot.memory-card.json