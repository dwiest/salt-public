{% from "rabbitmq/map.jinja" import rabbitmq with context %}

include:
  - rabbitmq.dependencies

rabbitmq-server_pkg:
  pkg.installed:
    - name     : {{ rabbitmq.pkg.name }}
{% set n = rabbitmq.pkg.repo %}
{% if n %}
    - fromrepo : {{ rabbitmq.pkg.repo }}
{% endif %}
{% set n = rabbitmq.pkg.version %}
{% if n  %}
    - version  : {{ rabbitmq.pkg.version }}
{% endif %}
    - require:
      - sls: rabbitmq.dependencies

