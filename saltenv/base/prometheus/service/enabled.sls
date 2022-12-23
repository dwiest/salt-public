{% from "prometheus/map.jinja" import prometheus with context %}

prometheus_service:
  service.enabled:
    - name: {{prometheus.service.name}}
