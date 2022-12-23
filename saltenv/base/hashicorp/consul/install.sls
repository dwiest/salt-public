{% from "hashicorp/map.jinja" import hashicorp with context %}

include:
  - hashicorp.consul.download
  - hashicorp.consul.user.present

{% set filename =  hashicorp.consul.agent.source %}
{% set basename = filename.split('/')|last %}

hashicorp-consul-install:
  cmd.run:
    - name : if [ ! -e {{hashicorp.consul.bindir}}/consul ]; then unzip {{hashicorp.consul.tmpdir}}/{{basename}}; else echo 'consul binary already present'; fi
    - cwd  : {{hashicorp.consul.bindir}}
    - require:
      - sls  : hashicorp.consul.download
      - file : hashicorp-consul-bindir

hashicorp-consul-initd:
  file.managed:
    - name: /etc/init.d/consul
    - source: salt://hashicorp/consul/consul.initd
    - user: root
    - group: root
    - mode: 0755
    - template: jinja
#    - context:
#        config : hashicorp.consul.config
    - require:
      - cmd: hashicorp-consul-install

hashicorp-consul-homedir:
  file.directory:
    - name: /opt/consul
    - user: root
    - group: consul
    - mode: 0775
    - require:
      - user: hashicorp-consul-user

hashicorp-consul-bindir:
  file.directory:
    - name: /opt/consul/bin
    - user: consul
    - group: consul
    - mode: 0775
    - require:
      - file: hashicorp-consul-homedir

hashicorp-consul-datadir:
  file.directory:
    - name: /opt/consul/data
    - user: consul
    - group: consul
    - mode: 0770
    - require:
      - file: hashicorp-consul-homedir

hashicorp-consul-tlsdir:
  file.directory:
    - name: /opt/consul/tls
    - user: consul
    - group: consul
    - mode: 0770
    - require:
      - file: hashicorp-consul-homedir

hashicorp-consul-logdir:
  file.directory:
    - name: /var/log/consul
    - user: root
    - group: consul
    - mode: 0770
    - require:
      - user: hashicorp-consul-user

# uses old service init, not systemctl
#hashicorp-consul-service:
#  service.enabled:
#    - name: consul
#    - require:
#      - file: hashicorp-consul-initd
