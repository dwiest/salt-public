{% from "nginx/map.jinja" import nginx with context %}

nginx_service:
  service.disabled:
    - name: {{nginx.service.name}}
