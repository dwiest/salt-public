{% from "yum/repo/jenkins/map.jinja" import jenkins with context %}

yum-repo-jenkins-install:
  file.managed:
    - name        : {{jenkins.repo.name}}
    - source      : {{jenkins.repo.source}}
    - skip_verify : True
    - user        : root
    - group       : root
    - mode        : 0644
