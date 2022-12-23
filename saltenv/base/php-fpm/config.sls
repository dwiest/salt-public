{% from "php-fpm/map.jinja" import php_fpm with context %}

php-fpm_config:
  file.managed:
    - name   : {{php_fpm.config.name}}
{% for item in php_fpm.config.keys() %}
  {% if php_fpm.config[item] %}
    - {{item}} : {{php_fpm.config[item]}}
  {% endif %}
{% endfor %}
