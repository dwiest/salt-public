{% from "php-fpm/map.jinja" import php_fpm with context %}

php-fpm_pkg:
  pkg.installed:
    - name: {{ php_fpm.pkg.name }}
{% set v = php_fpm.pkg.version %}
{% if v is defined and v != None and v != 'None' %}
    - version: {{ php_fpm.pkg.version }}
{% endif %}
{% set r = php_fpm.pkg.repo %}
{% if r is defined and r != None and r != 'None' %}
    - fromrepo: {{ php_fpm.pkg.repo }}
{% endif %}
