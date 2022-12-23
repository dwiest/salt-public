{% from "libreswan/map.jinja" import libreswan with context %}

{% for file in libreswan.confd.files %}
libreswan-confd_files-{{loop.index}}:
  file.managed:
    - name   : {{libreswan.confd.dir.name}}/{{file.name}}
    - source : {{file.source}}
    - user   : {{file.user|default('root')}}
    - group  : {{file.group|default('root')}}
    - mode   : {{file.mode|default('0640')}}
{% endfor %}
