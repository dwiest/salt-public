{% from "jenkins/map.jinja" import jenkins with context %}

jenkins-data_dir:
  file.directory:
    - name  : {{jenkins.data_dir.name}}
    - user  : {{jenkins.data_dir.user}}
    - group : {{jenkins.data_dir.group}}
    - mode  : {{jenkins.data_dir.mode}}
    - makedirs : True

# This is no longer used!!!
jenkins-sysconfig:
  file.managed:
    - name   : {{jenkins.sysconfig.name}}
{% if jenkins.sysconfig.get("source") != None %}
    - source: {{jenkins.sysconfig.source}}
{% endif %}
    - user   : {{jenkins.sysconfig.user}}
    - group  : {{jenkins.sysconfig.group}}
    - mode   : {{jenkins.sysconfig.mode}}
{% from "ec2/map.jinja" import ec2 with context %}

jenkins-service-file:
  file.managed:
    - name   : /usr/lib/systemd/system/jenkins.service
    - source : salt://jenkins/jenkins.service
    - user   : root
    - group  : root
    - mode   : 0640
