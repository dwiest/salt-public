{% from "yum/repo/jenkins/map.jinja" import jenkins with context %}

include:
  - yum.repo.jenkins.install

yum-repo-jenkins-gpgkey:
  cmd.run:
    - name: rpm --import {{jenkins.gpgkey.source}}
    - onchanges:
      - file: yum-repo-jenkins-install
