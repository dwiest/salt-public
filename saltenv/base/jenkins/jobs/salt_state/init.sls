{% from "jenkins/map.jinja" import jenkins with context %}

jenkins-jobs-salt_state:
  file.directory:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.salt_state.name}}
    - user     : jenkins
    - group    : jenkins
    - mode     : 0755

jenkins-jobs-salt_state-builds:
  file.directory:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.salt_state.name}}/builds
    - user     : jenkins
    - group    : jenkins
    - mode     : 0755

jenkins-jobs-salt_state-configurations:
  file.directory:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.salt_state.name}}/configurations
    - user     : jenkins
    - group    : jenkins
    - mode     : 0755

jenkins-jobs-salt_state-config:
  file.managed:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.salt_state.name}}/config.xml
    - source   : {{jenkins.jobs.salt_state.source}}
    - user     : jenkins
    - group    : jenkins
    - mode     : 0644
    - makedirs : True

jenkins-jobs-salt_state-next_build_number:
  file.managed:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.salt_state.name}}/nextBuildNumber
    - user     : jenkins
    - group    : jenkins
    - mode     : 0644
