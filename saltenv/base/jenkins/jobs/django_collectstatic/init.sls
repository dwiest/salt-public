{% from "jenkins/map.jinja" import jenkins with context %}

jenkins-jobs-salt_orchestration:
  file.directory:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.salt_orchestration.name}}
    - user     : jenkins
    - group    : jenkins
    - mode     : 0755

jenkins-jobs-salt_orchestration-builds:
  file.directory:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.salt_orchestration.name}}/builds
    - user     : jenkins
    - group    : jenkins
    - mode     : 0755

jenkins-jobs-salt_orchestration-configurations:
  file.directory:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.salt_orchestration.name}}/configurations
    - user     : jenkins
    - group    : jenkins
    - mode     : 0755

jenkins-jobs-salt_orchestration-config:
  file.managed:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.salt_orchestration.name}}/config.xml
    - source   : {{jenkins.jobs.salt_orchestration.source}}
    - user     : jenkins
    - group    : jenkins
    - mode     : 0644
    - makedirs : True

jenkins-jobs-salt_orchestration-next_build_number:
  file.managed:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.salt_orchestration.name}}/nextBuildNumber
    - user     : jenkins
    - group    : jenkins
    - mode     : 0644
