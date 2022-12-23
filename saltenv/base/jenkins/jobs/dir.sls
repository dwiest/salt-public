{% from "jenkins/map.jinja" import jenkins with context %}

jenkins-jobs-dir:
  file.directory:
    - name     : {{jenkins.jobs.home.name}}
    - user     : jenkins
    - group    : jenkins
    - mode     : 0755
