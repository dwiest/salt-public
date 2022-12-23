{% from "nagios/map.jinja" import nagios with context %}

{%- for file in nagios.confd.files %}
# Strip saltenv from filename
{% set f = file.source.split('?saltenv=') %}
nagios_confd_{{loop.index}}:
  file.managed:
    - name   : /etc/nagios/conf.d/{{salt['jinja_filters.basename'](f[0])}}
    - source : {{file.source}}
    - user   : root
    - group  : nagios
    - mode   : 640
    - template: jinja
    - context:
      command: {{nagios.command|yaml}}
{%- endfor %}
