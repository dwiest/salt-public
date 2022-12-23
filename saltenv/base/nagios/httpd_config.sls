{% from "nagios/map.jinja" import nagios with context %}

nagios-httpd_config:
  file.managed:
    - name     : {{nagios.httpd.config.name}}
{% if nagios.httpd.config.source %}
    - source   : {{nagios.httpd.config.source}}
{% endif %}
    - user     : {{nagios.httpd.config.user}}
    - group    : {{nagios.httpd.config.group}}
    - mode     : {{nagios.httpd.config.mode}}
