{% from "nagios/map.jinja" import nagios with context %}

nagios_htpasswd:
  file.managed:
    - name   : {{nagios.htpasswd.name}}
{% if nagios.htpasswd.source %}
    - source : {{nagios.htpasswd.source}}
{% endif %}
    - user   : {{nagios.htpasswd.user}}
    - group  : {{nagios.htpasswd.group}}
    - mode   : {{nagios.htpasswd.mode}}
