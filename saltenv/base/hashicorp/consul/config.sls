{% from "hashicorp/map.jinja" import hashicorp with context %}

include:
  - hashicorp.consul.user.present

hashicorp-consul-configdir:
  file.directory:
    - name  : {{hashicorp.consul.config.dir}}
    - user  : consul
    - group : consul
    - mode  : 0750
    - require:
      - sls: hashicorp.consul.user.present

hashicorp-consul-config:
  file.managed:
    - name   : {{hashicorp.consul.config.dir}}/{{hashicorp.consul.config.name}}
    - source : {{hashicorp.consul.config.source}}
    - user   : consul
    - group  : consul
    - mode   : 0750
    - require:
      - file: hashicorp-consul-configdir
    - template: jinja
    - context:
        config: {{hashicorp.consul.config}}

