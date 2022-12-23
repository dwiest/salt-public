cacti_config_php:
  file.managed:
    - name   : /usr/share/cacti/include/config.php
    - source : salt://cacti/config.php
    - uid    : 0
    - gid    : 0
    - mode   : 644
