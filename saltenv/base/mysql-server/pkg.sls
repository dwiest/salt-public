{% from "mysql-server/map.jinja" import mysql with context %}

include:
  - mysql-server.dependencies

mysql_pkg:
  pkg.installed:
    - name    : {{ mysql.pkg.name    }}
{% if mysql.pkg.repo != None %}
    - repo    : {{ mysql.pkg.repo    }}
{% endif %}
{% if mysql.pkg.version != None %}
    - version : {{ mysql.pkg.version }}
{% endif %}
    - require:
      - sls: mysql-server.dependencies

