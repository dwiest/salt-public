{% from "mariadb-server/map.jinja" import mariadb_server with context %}

mariadb-server-service:
  service.stopped:
    - name: {{mariadb_server.service.name}}
