nginx:
  confd:
    files:
      - name   : default.conf
        source : salt://nagios/nagios.nginx.conf
