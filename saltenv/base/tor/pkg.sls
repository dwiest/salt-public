{% from "tor/map.jinja" import tor with context %}

tor_pkg:
  pkg.installed:
{% for item in tor.pkg.keys() %}
  {% if tor.pkg[item] %}
    - {{item}}: {{ tor.pkg[item]}}
  {% endif %}
{% endfor %}
