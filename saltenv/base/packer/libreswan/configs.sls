{% from "packer/map.jinja" import packer with context %}

packer-libreswan-configs:
  file.directory:
    - name     : {{packer.home.name}}/libreswan/configs
    - user     : {{packer.home.user}}
    - group    : {{packer.home.group}}
    - mode     : {{packer.home.mode}}
    - makedirs : True

packer-libreswan-configs-minion:
  file.managed:
    - name     : {{packer.home.name}}/libreswan/configs/minion
    - source   : salt://packer/_default/minion
    - user     : {{packer.home.user}}
    - group    : {{packer.home.group}}
    - mode     : 0644
    - template : jinja
    - context:
        salt: {{packer.base.salt|json}}
    - require:
      - file: packer-libreswan-configs

