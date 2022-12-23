{% from "prometheus/map.jinja" import prometheus with context %}

prometheus_service:
  service.running:
    - name: {{prometheus.service.name}}
