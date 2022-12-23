{% from "php/map.jinja" import php with context %}

{% if php.get('confd') %}
{% for file in php.confd.files %}
php-confd_files-{{loop.index}}:
  file.managed:
  {% for item in file.keys() %}
    - {{item}}: {{file[item]}}
  {% endfor %}
{% endfor %}
{% endif %}
