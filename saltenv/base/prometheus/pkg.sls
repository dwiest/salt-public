{% from "prometheus/map.jinja" import prometheus with context %}

prometheus_pkg:
  pkg.installed:
{% for item in prometheus.pkg.keys() %}
    - {{item}}: {{ prometheus.pkg[item]}}
{% endfor %}
