php-fpm_logrotate:
  file.managed:
    - name   : /etc/logrotate.d/php-fpm
    - source : salt://php-fpm/etc/logrotate.d/php-fpm
    - uid    : 0
    - gid    : 0
    - mode   : 644
