{% from "prometheus/map.jinja" import prometheus with context %}

prometheus-defaults:
  file.managed:
{% for item in prometheus.defaults.keys() %}
    - {{item}}: {{prometheus.defaults[item]}}
{% endfor %}
