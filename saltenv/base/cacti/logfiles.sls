{% from "cacti/map.jinja" import cacti with context %}

cacti-log:
  file.managed:
    - name  : /var/log/cacti/cacti.log
    - user  : cacti
    - group : nginx
    - mode  : 0664

cacti-stderr:
  file.managed:
    - name  : /var/log/cacti/cacti_stderr.log
    - user  : cacti
    - group : nginx
    - mode  : 0664
