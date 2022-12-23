{% from "mysql-server/map.jinja" import mysql with context %}

mysql_yum_repo:
  pkg.installed:
    - sources:
      - mysql57-community-release: {{mysql.repo_source}}
{% if mysql.source_hash and mysql.source_hash != None %}
    - hash: {{mysql.source_hash}}
{% endif %}
