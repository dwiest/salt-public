nginx:
  confd:
    files:
      - name   : default.conf
        source : salt://nginx/django.nginx.conf
