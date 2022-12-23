{% from "rabbitmq/map.jinja" import rabbitmq with context %}

include:
  - rabbitmq.dirs

rabbitmq_config:
{%- if rabbitmq.config.source %}
  file.managed:
    - name     : {{ rabbitmq.config.name }}
    - source   : {{ rabbitmq.config.source }}
    - user     : root
    - group    : root
    - mode     : 644
    - template : jinja 
    - context:
       config   : {{ rabbitmq.config|yaml        }}
       listener : {{ rabbitmq.management.listener }}
    - require:
      - file: rabbitmq_config_home
{%- else %}
  test.nop
{%- endif %}
