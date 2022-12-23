{% from "php-fpm/map.jinja" import php_fpm with context %}

php-fpm_service:
  service.enabled:
    - name: {{php_fpm.service}}
