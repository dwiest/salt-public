{% from "rabbitmq/map.jinja" import rabbitmq with context %}

include:
  - rabbitmq.dirs

rabbitmq_plugins:
  file.managed:
    - name   : {{ rabbitmq.plugins        }}
    - source : {{ rabbitmq.plugins_source }}
    - user   : root
    - group  : root
    - mode   : 644
    - require:
      - file: rabbitmq_config_home
