nginx:
  confd:
    files:
      - name   : default.conf
        source : salt://phpmyadmin/phpmyadmin.nginx.conf
