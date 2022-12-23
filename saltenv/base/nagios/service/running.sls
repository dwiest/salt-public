{% from "nagios/map.jinja" import nagios with context %}

nagios_service:
  service.running:
    - name: {{nagios.service.name}}
