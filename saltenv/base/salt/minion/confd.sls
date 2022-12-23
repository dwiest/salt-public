{% from "salt/minion/map.jinja" import salt_minion with context %}

{% for file in salt_minion.confd.files %}
salt-minion-confd_files-{{loop.index}}:
  file.managed:
    - name   : {{salt_minion.confd.dir.name}}/{{file.name}}
    - source : {{file.source}}
    - user   : {{file.user|default('root')}}
    - group  : {{file.group|default('root')}}
    - mode   : {{file.mode|default('0640')}}
    - template : jinja
    - context :
       ec2instanceid: {{grains.ec2instanceid|default('')}}
       grains: {{salt_minion.grains|default({})|yaml}}
       autosign_grains: {{salt_minion.autosign_grains|default([])}}
{% endfor %}
