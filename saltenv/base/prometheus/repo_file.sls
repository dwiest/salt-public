{% from "prometheus/map.jinja" import prometheus with context %}

prometheus-repo-pkg:
  file.managed:
    - name: /etc/yum.repos.d/prometheus.repo
    - source: salt://prometheus/prometheus.yum.repo
    - user: root
    - group: root
    - mode: 0644
