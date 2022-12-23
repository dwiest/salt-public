{% from "nagios/map.jinja" import nagios with context %}

nagios_service:
  service.stopped:
    - name: {{nagios.service.name}}
