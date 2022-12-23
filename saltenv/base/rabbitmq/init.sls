{% from "rabbitmq/map.jinja" import rabbitmq with context %}

include:
  - rabbitmq.pkg
  - rabbitmq.dirs
  - rabbitmq.plugins
  - rabbitmq.logrotate
  - rabbitmq.cookie
  - rabbitmq.env
  - rabbitmq.config
  - rabbitmq.limits
