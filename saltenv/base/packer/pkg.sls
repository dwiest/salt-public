{% from "packer/map.jinja" import packer with context %}

packer-pkg:
  file.managed:
    - name        : {{packer.pkg.name|default('packer')}}
    - source      : {{packer.pkg.source}}
    - source_hash : {{packer.pkg.source_hash}}
    - unless      : test -e /usr/local/bin/packer

packer-pkg_unzip:
  cmd.run:
    - cwd    : /usr/local/bin
    - name   : unzip {{packer.pkg.name}}
    - unless : test -e /usr/local/bin/packer
