{% from "prometheus/map.jinja" import prometheus with context %}

prometheus_service:
  service.disabled:
    - name: {{prometheus.service.name}}
