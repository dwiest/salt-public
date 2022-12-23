{% from "haproxy/map.jinja" import haproxy with context %}

haproxy-config:
  file.managed:
    - name   : /etc/haproxy/haproxy.cfg
    - source : {{haproxy.config.source}}
    - user   : root
    - group  : root
    - mode   : 0644
