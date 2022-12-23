nginx:
  confd:
    files:
      - name   : default.conf
        source : salt://cacti/cacti.nginx.conf
