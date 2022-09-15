FROM svikramjeet/php8.1

LABEL "com.github.actions.name"="GitHub Action for Webhook Notification"
LABEL "com.github.actions.description"="Post data to webhook from gihub via actions"
LABEL "com.github.actions.icon"="happy"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/svikramjeet/gitaction-webhook"
LABEL "homepage"="https://github.com/svikramjeet/gitaction-webhook"
LABEL "maintainer"="svikramjeet"

ADD entrypoint.php /var/www/html/
RUN chmod +x /var/www/html/entrypoint.php

RUN ls -a

ENTRYPOINT ["php", "/var/www/html/entrypoint.php"]
