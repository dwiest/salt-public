{% from "php-fpm/map.jinja" import php_fpm with context %}

php-fpm_pool_config:
  file.managed:
    - name   : {{ php_fpm.pool_config        }}
    - source : {{ php_fpm.pool_config_source }}
    - uid    : 0
    - gid    : 0
    - mode   : 644
