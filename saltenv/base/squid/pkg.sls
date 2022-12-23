{% from "squid/map.jinja" import squid with context %}

squid-pkg:
  pkg.installed:
    - name     : {{squid.pkg.name|default('squid')}}
