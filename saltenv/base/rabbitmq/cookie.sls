{% from "rabbitmq/map.jinja" import rabbitmq with context %}

include:
  - rabbitmq.dirs

rabbitmq_cookie:
  file.managed:
    - name     : {{ rabbitmq.cookie.name   }}
    - source   : {{ rabbitmq.cookie.source }}
    - user     : {{ rabbitmq.user          }}
    - group    : {{ rabbitmq.group         }}
    - mode     : {{ rabbitmq.cookie.mode   }}
    - template : jinja
    - context:
        cookie: {{rabbitmq.cookie|json}}
    - require:
      - file  : var_lib_rabbitmq
