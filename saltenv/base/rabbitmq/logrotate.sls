{% from "rabbitmq/map.jinja" import rabbitmq with context %}

rabbitmq_logrotate:
  file.managed:
    - name   : /etc/logrotate.d/rabbitmq-server
    - source : salt://rabbitmq/etc/logrotate.d/rabbitmq-server
    - uid    : 0
    - gid    : 0
    - mode   : 644
