{% from "jenkins/map.jinja" import jenkins with context %}

jenkins-jobs-django_collectstatic:
  file.directory:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.django_collectstatic.name}}
    - user     : jenkins
    - group    : jenkins
    - mode     : 0755

jenkins-jobs-django_collectstatic-builds:
  file.directory:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.django_collectstatic.name}}/builds
    - user     : jenkins
    - group    : jenkins
    - mode     : 0755

jenkins-jobs-django_collectstatic-configurations:
  file.directory:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.django_collectstatic.name}}/configurations
    - user     : jenkins
    - group    : jenkins
    - mode     : 0755

jenkins-jobs-django_collectstatic-config:
  file.managed:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.django_collectstatic.name}}/config.xml
    - source   : {{jenkins.jobs.django_collectstatic.source}}
    - user     : jenkins
    - group    : jenkins
    - mode     : 0644
    - makedirs : True

jenkins-jobs-django_collectstatic-next_build_number:
  file.managed:
    - name     : {{jenkins.jobs.home.name}}/{{jenkins.jobs.django_collectstatic.name}}/nextBuildNumber
    - user     : jenkins
    - group    : jenkins
    - mode     : 0644
