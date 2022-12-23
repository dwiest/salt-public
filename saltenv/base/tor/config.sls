{% from "tor/map.jinja" import tor with context %}

tor-config:
  file.managed:
    - name   : {{tor.config.name}}
    - source : {{tor.config.source}}
    - user   : {{tor.config.user|default('root')}}
    - group  : {{tor.config.group|default('root')}}
    - mode   : {{tor.config.mode|default('0640')}}
