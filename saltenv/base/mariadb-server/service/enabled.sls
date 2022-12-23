{% from "mariadb-server/map.jinja" import mariadb_server with context %}

mariadb-server-service:
  service.enabled:
    - name: {{mariadb_server.service.name}}
