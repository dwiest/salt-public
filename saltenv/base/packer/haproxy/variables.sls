{% from "packer/map.jinja"        import packer   with context %}

packer-haproxy-variables:
  file.managed:
    - name     : {{packer.home.name}}/haproxy/variables/haproxy-variables.json
    - user     : {{packer.home.user}}
    - group    : {{packer.home.group}}
    - mode     : 0644
    - source   : salt://packer/_default/variables.json.tmpl
    - makedirs : True
    - template : jinja
    - context:
        config   : {{packer.haproxy|json}}
