{% from "nagios/map.jinja" import nagios with context %}

nagios-config-plugins_file:
  file.managed:
    - name  : /etc/nagios/plugins.ini
    - user  : root
    - group : root
    - mode  : 0644
