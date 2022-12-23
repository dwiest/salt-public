{% from "java8/map.jinja" import java8 with context %}

java8-pkg:
  pkg.installed:
    - name: {{java8.pkg.name}}
