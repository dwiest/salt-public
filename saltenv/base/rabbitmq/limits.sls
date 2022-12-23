{% from "rabbitmq/map.jinja" import rabbitmq with context %}

rabbitmq_ulimits:
  file.managed:
    - name     : {{rabbitmq.limits.name}}
    - source   : {{rabbitmq.limits.source}}
    - mode     : {{rabbitmq.limits.mode}}
    - uid      : 0
    - gid      : 0
    - template : jinja
    - context:
        user   : {{rabbitmq.user}}
        limits : {{rabbitmq.limits}}
