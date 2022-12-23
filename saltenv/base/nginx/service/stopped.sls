{% from "nginx/map.jinja" import nginx with context %}

nginx_service:
  service.stopped:
    - name: {{nginx.service.name}}
