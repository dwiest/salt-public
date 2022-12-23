{% from "mariadb-server/map.jinja" import mariadb_server with context %}

mariadb-server-service:
  service.disabled:
    - name: {{mariadb_server.service.name}}
