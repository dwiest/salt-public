{% from "grafana/map.jinja" import grafana with context %}

grafana-config:
  file.managed:
{% for item in grafana.config.keys() %}
    - {{item}}: {{grafana.config[item]}}
{% endfor %}
