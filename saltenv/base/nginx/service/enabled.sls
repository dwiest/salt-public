{% from "nginx/map.jinja" import nginx with context %}

nginx_service:
  service.enabled:
    - name: {{nginx.service.name}}
