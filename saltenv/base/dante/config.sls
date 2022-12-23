{% from "dante/map.jinja" import dante with context %}

dante-config:
  file.managed:
    - name   : {{dante.config.name}}
    - source : {{dante.config.source}}
    - user   : {{dante.config.user}}
    - group  : {{dante.config.group}}
    - mode   : {{dante.config.mode}}
