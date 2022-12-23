{% from "fcgiwrap/map.jinja" import fcgiwrap with context %}

fcgiwrap-pkg:
  pkg.installed:
{% for item in fcgiwrap.pkg.keys() %}
  {% if fcgiwrap.pkg[item] %}
    - {{item}}: {{fcgiwrap.pkg[item]}}
  {% endif %}
{% endfor %}
