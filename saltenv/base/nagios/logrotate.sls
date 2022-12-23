{% from "nagios/map.jinja" import nagios with context %}

nagios_logrotate:
  file.managed:
    - name   : /etc/logrotate.d/nagios
    - source : salt://nagios/etc/logrotate.d/nagios
    - uid    : 0
    - gid    : 0
    - mode   : 644
