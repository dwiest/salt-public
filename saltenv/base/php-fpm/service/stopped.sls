{% from "php-fpm/map.jinja" import php_fpm with context %}

php-fpm_service:
  service.stopped:
    - name: {{php_fpm.service}}
