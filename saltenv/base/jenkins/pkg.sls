{% from "jenkins/map.jinja" import jenkins with context %}

# Install of jenkins service
jenkins-pkgrepo:
  pkgrepo.managed:
    - name      : {{jenkins.pkg.repo.name}}
    - humanname : {{jenkins.pkg.repo.humanname}}
    - baseurl   : {{jenkins.pkg.repo.baseurl}}
    - gpgkey    : {{jenkins.pkg.repo.gpgkey}}
    - gpgcheck  : {{jenkins.pkg.repo.gpgcheck}}

jenkins-pkg:
  pkg.installed:
    - name     : {{jenkins.pkg.name|default('jenkins')}}
    - fromrepo : {{jenkins.pkg.repo.name}}
