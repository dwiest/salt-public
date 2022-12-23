{% from "yum/map.jinja" import yum with context %}

yum-packages:
  pkg.installed:
    - pkgs: {{yum.packages}}
