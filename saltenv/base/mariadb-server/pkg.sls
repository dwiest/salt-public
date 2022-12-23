{% from "mariadb-server/map.jinja" import mariadb_server with context %}

mariadb-server-pkg:
  pkg.installed:
{% for item in mariadb_server.pkg.keys() %}
    - {{item}}: {{mariadb_server.pkg[item]}}
{% endfor %}
