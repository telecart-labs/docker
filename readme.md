# TeleCart Docker Images

## Scheduler

```yaml
cron:
  image: ghcr.io/telecart-labs/scheduler:latest
  restart: unless-stopped
  volumes:
    ./src:/var/www
  environment:
    CRONTAB: |
      */5 * * * * php /var/www/cli.php > /proc/1/fd/1 2>&1
      * * * * * echo "TEST $(date)" > /proc/1/fd/1
```
