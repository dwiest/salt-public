{% from "jenkins/map.jinja" import jenkins with context %}

jenkins-jobs-salt_highstate:
  file.directory:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.salt_highstate.name}}
    - user     : jenkins
    - group    : jenkins
    - mode     : 0755

jenkins-jobs-salt_highstate-builds:
  file.directory:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.salt_highstate.name}}/builds
    - user     : jenkins
    - group    : jenkins
    - mode     : 0755

jenkins-jobs-salt_highstate-configurations:
  file.directory:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.salt_highstate.name}}/configurations
    - user     : jenkins
    - group    : jenkins
    - mode     : 0755

jenkins-jobs-salt_highstate-config:
  file.managed:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.salt_highstate.name}}/config.xml
    - source   : {{jenkins.jobs.salt_highstate.source}}
    - user     : jenkins
    - group    : jenkins
    - mode     : 0644
    - makedirs : True

jenkins-jobs-salt_highstate-next_build_number:
  file.managed:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.salt_highstate.name}}/nextBuildNumber
    - user     : jenkins
    - group    : jenkins
    - mode     : 0644
