{% from "fcgiwrap/map.jinja" import fcgiwrap with context %}

fcgiwrap_service:
  service.enabled:
    - name: {{fcgiwrap.service.name}}
