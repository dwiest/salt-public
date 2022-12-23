{% from "fcgiwrap/map.jinja" import fcgiwrap with context %}

fcgiwrap_service:
  service.stopped:
    - name: {{fcgiwrap.service.name}}
