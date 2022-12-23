{% from "packer/map.jinja" import packer with context %}

packer-haproxy-configs:
  file.directory:
    - name     : {{packer.home.name}}/haproxy/configs
    - user     : {{packer.home.user}}
    - group    : {{packer.home.group}}
    - mode     : {{packer.home.mode}}
    - makedirs : True

packer-haproxy-configs-minion:
  file.managed:
    - name     : {{packer.home.name}}/haproxy/configs/minion
    - source   : salt://packer/_default/minion
    - user     : {{packer.home.user}}
    - group    : {{packer.home.group}}
    - mode     : 0644
    - template : jinja
    - context:
        salt: {{packer.base.salt|json}}
    - require:
      - file: packer-haproxy-configs
