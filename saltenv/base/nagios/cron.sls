{% from 'nagios/map.jinja' import nagios with context %}

nagios_cron:
  file.managed:
    - name   : {{nagios.crontab.name}}
    - source : {{nagios.crontab.source}}
    - user   : {{nagios.crontab.user}}
    - group  : {{nagios.crontab.group}}
    - mode   : {{nagios.crontab.mode}}
