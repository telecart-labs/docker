FROM webdevops/php:7.4

RUN curl -L -o /usr/local/bin/supercronic \
    https://github.com/aptible/supercronic/releases/latest/download/supercronic-linux-amd64 \
    && chmod +x /usr/local/bin/supercronic

COPY crontab /etc/cron.d/crontab
RUN chmod 0644 /etc/cron.d/crontab

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
