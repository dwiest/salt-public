{% from "yum/repo/epel/map.jinja" import "epel" with context %}

yum-repo-epel-pkg:
  pkg.installed:
    - source: {{epel.repo.source}}
