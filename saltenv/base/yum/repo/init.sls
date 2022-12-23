{% from "yum/map.jinja" import yum with context %}

{% if yum.get("repo") %}
include:
  {% for repo in yum.repo %}
  - {{repo}}
  {% endfor %}
{% endif %}

yum-repo-nop:
  test.nop
