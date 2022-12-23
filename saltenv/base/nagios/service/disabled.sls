{% from "nagios/map.jinja" import nagios with context %}

nagios_service:
  service.disabled:
    - name: {{nagios.service.name}}
