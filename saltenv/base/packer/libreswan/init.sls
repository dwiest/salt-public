{% from "packer/map.jinja" import packer with context %}

include:
  - packer.libreswan.configs
  - packer.libreswan.variables

packer-libreswan-application:
  file.managed:
    - name     : {{packer.home.name}}/libreswan/application.json
    - user     : {{packer.home.user}}
    - group    : {{packer.home.group}}
    - mode     : 0644
    - source   : salt://packer/_default/application.json
    - makedirs : True
    - template : jinja
    - context  :
        config : {{packer.libreswan|json}}

#packer-libreswan-build:
#  cmd.run:
#    - cwd  : {{packer.home.name}}/libreswan
#    - name : echo ../bin/packer build --var-file=./variables/libreswan-variables.json ./application.json
#    - require:
#      - file: packer-libreswan-application
#      - file: packer-libreswan-variables
#      - file: packer-libreswan-configs-minion

