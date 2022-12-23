{% from "grafana/map.jinja" import grafana with context %}

grafana_pkg:
  pkg.installed:
{% for item in grafana.pkg.keys() %}
    - {{item}}: {{ grafana.pkg[item]}}
{% endfor %}
