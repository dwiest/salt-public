{% from "prometheus/map.jinja" import prometheus with context %}

prometheus-config:
  file.managed:
{% for item in prometheus.config.keys() %}
    - {{item}}: {{prometheus.config[item]}}
{% endfor %}
