{% from "cacti/map.jinja" import cacti with context %}

cacti-crontab:
  cron.present:
    - name       : /usr/bin/php /usr/share/cacti/poller.php
    - user       : cacti
    - minute     : '*/5'
    - identifier : CACTI_POLLER
