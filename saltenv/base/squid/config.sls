{% from "squid/map.jinja" import squid with context %}

squid-config:
  file.managed:
    - name   : /etc/squid/squid.conf
    - source : {{squid.config.source}}
    - user   : root
    - group  : root
    - mode   : 0644
