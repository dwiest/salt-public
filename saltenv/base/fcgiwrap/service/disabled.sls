{% from "fcgiwrap/map.jinja" import fcgiwrap with context %}

fcgiwrap_service:
  service.disabled:
    - name: {{fcgiwrap.service.name}}
