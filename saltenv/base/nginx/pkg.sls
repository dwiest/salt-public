{% from "nginx/map.jinja" import nginx with context %}

nginx_pkg:
  pkg.installed:
{% for item in nginx.pkg.keys() %}
  {% if nginx.pkg[item] %}
    - {{item}}: {{ nginx.pkg[item]}}
  {% endif %}
{% endfor %}
