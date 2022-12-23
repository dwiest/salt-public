{% from "rabbitmq/map.jinja" import rabbitmq with context %}

include:
  - rabbitmq.dirs

rabbitmq_env_config:
  file.managed:
    - name     : {{rabbitmq.env_config.name}}
{%- if rabbitmq.env_config.source %}
    - source   : {{rabbitmq.env_config.source}}
    - template : jinja
    - context:
       env_config: {{rabbitmq.env_config|json}}
{%- endif %}
    - user     : root
    - group    : root
    - mode     : 644
    - require:
      - sls: rabbitmq.dirs
