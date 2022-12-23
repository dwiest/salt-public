{% from "nagios/map.jinja" import nagios with context %}

{% for file in nagios.confd.files %}
nagios-confd_files-{{loop.index}}:
  file.managed:
    - name   : {{nagios.confd.dir.name}}/{{file.name}}
    - source : {{file.source}}
    - user   : {{file.user|default('nagios')}}
    - group  : {{file.group|default('nagios')}}
    - mode   : {{file.mode|default('0640')}}
{% endfor %}
