{% from "nagios/map.jinja" import nagios with context %}

nagios_pkg:
  pkg.installed:
    - name: {{ nagios.pkg.name }}
{% if nagios.pkg.repo %}
    - repo: {{ nagios.pkg.repo }}
{% endif %}
{% if nagios.pkg.version %}
    - version: {{ nagios.pkg.version }}
{% endif %}
