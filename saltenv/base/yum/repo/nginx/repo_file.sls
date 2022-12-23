{% from "yum/repo/nginx/map.jinja" import nginx with context %}

yum-repo-nginx-pkg:
  file.managed:
    - order: 1
    - name: /etc/yum.repos.d/nginx.repo
    - source: salt://yum/repo/nginx/nginx.repo
    - user: root
    - group: root
    - mode: 0644
