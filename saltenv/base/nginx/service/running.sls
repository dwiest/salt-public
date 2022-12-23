{% from "nginx/map.jinja" import nginx with context %}

nginx_service:
  service.running:
    - name: {{nginx.service.name}}
