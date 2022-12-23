{% from "nginx/map.jinja" import nginx with context %}

{% for file in nginx.confd.files %}
nginx-confd_files-{{loop.index}}:
  file.managed:
    - name   : {{nginx.confd.dir.name}}/{{file.name}}
    - source : {{file.source}}
    - user   : {{file.user|default('root')}}
    - group  : {{file.group|default('root')}}
    - mode   : {{file.mode|default('0640')}}
{% endfor %}
