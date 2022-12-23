{% from "prometheus/map.jinja" import prometheus with context %}

prometheus_service:
  service.stopped:
    - name: {{prometheus.service.name}}
