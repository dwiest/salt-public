{% from "jenkins/map.jinja" import jenkins with context %}

jenkins-jobs-ami_build:
  file.directory:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.ami_build.name}}
    - user     : jenkins
    - group    : jenkins
    - mode     : 0755

jenkins-jobs-ami_build-builds:
  file.directory:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.ami_build.name}}/builds
    - user     : jenkins
    - group    : jenkins
    - mode     : 0755

jenkins-jobs-ami_build-configurations:
  file.directory:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.ami_build.name}}/configurations
    - user     : jenkins
    - group    : jenkins
    - mode     : 0755

jenkins-jobs-ami_build-config:
  file.managed:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.ami_build.name}}/config.xml
    - source   : {{jenkins.jobs.ami_build.source}}
    - user     : jenkins
    - group    : jenkins
    - mode     : 0644
    - makedirs : True

jenkins-jobs-ami_build-next_build_number:
  file.managed:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.ami_build.name}}/nextBuildNumber
    - user     : jenkins
    - group    : jenkins
    - mode     : 0644
