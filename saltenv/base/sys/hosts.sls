{% from "sys/map.jinja" import sys with context %}

{% if sys.hosts.source is defined %}
sys-hosts:
  file.managed:
    - name   : /etc/hosts
    - source : {{sys.hosts.source}}
    - user: root
    - group: root
    - mode: 0644
{% endif %}

{% for entry in sys.hosts.present %}
sys-hosts-{{loop.index}}:
  host.present:
    - ip: {{entry.ip}}
    - names: {{entry.names}}
{% endfor %}
