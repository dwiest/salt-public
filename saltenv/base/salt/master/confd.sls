{% from "salt/master/map.jinja" import salt_master with context %}

{% for file in salt_master.confd.files %}
salt-master-confd_files-{{loop.index}}:
  file.managed:
    - name   : {{salt_master.confd.dir.name}}/{{file.name}}
    - source : {{file.source}}
    - user   : {{file.user|default('root')}}
    - group  : {{file.group|default('salt')}}
    - mode   : {{file.mode|default('0640')}}
{% endfor %}
