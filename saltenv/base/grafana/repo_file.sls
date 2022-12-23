{% from "grafana/map.jinja" import grafana with context %}

grafana-repo-pkg:
  file.managed:
    - name: /etc/yum.repos.d/grafana.repo
    - source: salt://grafana/grafana.yum.repo
    - user: root
    - group: root
    - mode: 0644
