{% from "packer/map.jinja" import packer with context %}

include:
  - packer.haproxy.configs
  - packer.haproxy.variables

packer-haproxy-application:
  file.managed:
    - name     : {{packer.home.name}}/haproxy/application.json
    - user     : {{packer.home.user}}
    - group    : {{packer.home.group}}
    - mode     : 0644
    - source   : salt://packer/_default/application.json
    - makedirs : True
    - template : jinja
    - context  :
        config : {{packer.haproxy|json}}

#packer-haproxy-build:
#  cmd.run:
#    - cwd  : {{packer.home.name}}/haproxy
#    - name : echo ../bin/packer build --var-file=./variables/haproxy-variables.json ./application.json
#    - require:
#      - file: packer-haproxy-application
#      - file: packer-haproxy-variables
#      - file: packer-haproxy-configs-minion

