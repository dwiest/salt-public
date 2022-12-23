{% from "libreswan/map.jinja" import libreswan with context %}

libreswan-pkg:
  pkg.installed:
    - name: {{libreswan.pkg.name|default('libreswan')}}
