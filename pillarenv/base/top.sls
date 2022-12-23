base:
  '*':
    - ec2
    - yum

  'type:btc-core':
    - match: grain
    - btc-core/salt-minion

  'type:cacti':
    - match: grain
    - cacti/salt-minion
    - cacti/nginx

  'type:consul':
    - match: grain
    - consul/salt-minion

  'type:dante':
    - match: grain
    - dante/salt-minion

  'type:django':
    - match: grain
    - django/ec2
    - django/salt-minion
    - django/yum
    - django/python

  'type:grafana':
    - match: grain
    - grafana/salt-minion

  'type:haproxy':
    - match: grain
    - haproxy/salt-minion
    - haproxy/yum

  'type:jenkins':
    - match: grain
    - jenkins/ec2

  'type:libreswan':
    - match: grain
    - libreswan/ec2
    - libreswan/salt-minion
    - libreswan/yum

  'type:mariadb':
    - match: grain
    - mariadb/salt-minion
    - mariadb/nginx

  'type:nagios':
    - match: grain
    - nagios/nginx
    - nagios/salt-minion

  'type:Next.js':
    - match: grain
    - Next_js/ec2
    - Next_js/salt-minion
    - Next_js/yum
    - Next_js/python

  'type:nginx':
    - match: grain
    - nginx/ec2
    - nginx/salt-minion
    - nginx/yum
    - nginx/python
    - nginx/nginx

  'type:packer':
    - match: grain
    - packer/salt-minion
    - packer/yum

  'type:prometheus':
    - match: grain
    - prometheus/salt-minion

  'type:rabbitmq':
    - match: grain
    - rabbitmq/salt-minion

  'type:salt-master':
    - match: grain

  'type:squid':
    - match: grain

  'type:tor':
    - match: grain
