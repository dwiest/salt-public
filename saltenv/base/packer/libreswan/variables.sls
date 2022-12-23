{% from "packer/map.jinja"        import packer   with context %}

packer-libreswan-variables:
  file.managed:
    - name     : {{packer.home.name}}/libreswan/variables/libreswan-variables.json
    - user     : {{packer.home.user}}
    - group    : {{packer.home.group}}
    - mode     : 0644
    - source   : salt://packer/_default/variables.json.tmpl
    - makedirs : True
    - template : jinja
    - context:
        config   : {{packer.libreswan|json}}
