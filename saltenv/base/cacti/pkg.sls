{% from "cacti/map.jinja" import cacti with context %}

cacti_pkg:
  pkg.installed:
{% for item in cacti.pkg.keys() %}
    - {{item}}: {{cacti.pkg[item]}}
{% endfor %}
