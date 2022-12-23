{% from "mysql-server/map.jinja" import mysql with context %}

mysql-server-dependencies:
  pkg.installed:
    - name : perl-DBI
