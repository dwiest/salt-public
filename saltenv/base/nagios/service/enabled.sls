{% from "nagios/map.jinja" import nagios with context %}

nagios_service:
  service.enabled:
    - name: {{nagios.service.name}}
