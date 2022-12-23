{% from "jenkins/map.jinja" import jenkins with context %}

include:
  - jenkins.pkg

jenkins-service_running:
  service.running:
    - name   : {{jenkins.service.name}}
    - enable : {{jenkins.service.enable}}
    - require:
      - pkg: jenkins-pkg
