{% from "fcgiwrap/map.jinja" import fcgiwrap with context %}

fcgiwrap_service:
  service.running:
    - name: {{fcgiwrap.service.name}}
