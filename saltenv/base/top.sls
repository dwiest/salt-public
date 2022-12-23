base:
  '*':
    - sys.hosts
    - yum
    - ec2

  'type:btc-core':
    - match: grain
    - salt.minion
    - btc-core

  'type:cacti':
    - match: grain
    - salt.minion
    - yum.repo.epel
    - yum.repo.nginx
    - mariadb-server
    - mariadb-server.service.enabled
    - php-fpm
    - php-fpm.service.enabled
    - fcgiwrap
    - fcgiwrap.service.enabled
    - nginx # must be before cacti?
    - nginx.service.enabled
    - php # after nginx, needs user
    - cacti

  'type:consul':
    - match: grain
    - salt.minion
    - hashicorp.consul

  'type:dante':
    - match: grain
    - salt.minion
    - dante

  'type:django':
    - match: grain
    - salt.minion
    - python
    - django

  'type:grafana':
    - match: grain
    - salt.minion
    - grafana.repo_file
    - grafana

  'type:haproxy':
    - match: grain
    - salt.minion
    - haproxy
    - haproxy.runonce

  'type:jenkins':
    - match: grain
    - salt.minion
    - jenkins

  'type:libreswan':
    - match: grain
    - salt.minion

  'type:mariadb':
    - match: grain
    - salt.minion
    - yum.repo.epel
    - yum.repo.nginx
    - mariadb-server
    - mariadb-server.service.enabled
    - php-fpm
    - php-fpm.service.enabled
    - fcgiwrap
    - fcgiwrap.service.enabled
    - nginx
    - nginx.service.enabled
    - php # after nginx, needs user
    - phpmyadmin

  'type:nagios':
    - match: grain
    - yum.repo.nginx
    - php-fpm
    - php-fpm.service.enabled
    - fcgiwrap
    - fcgiwrap.service.enabled
    - nginx # must be before nagios
    - nginx.service.enabled
    - nagios
    - nagios.service.enabled

  'type:Next.js':
    - match: grain
    - salt.minion
    - python

  'type:nginx':
    - match: grain
    - yum.repo.nginx
    - salt.minion
    - python
    - django
    - nginx

  'type:packer':
    - match: grain
    - yum.repo.hashicorp
    - salt.minion

  'type:prometheus':
    - match: grain
    - salt.minion
    - prometheus.repo_file
    - prometheus

  'type:rabbitmq':
    - match: grain
    - salt.minion
    - rabbitmq

  'type:salt':
    - match: grain
    - salt.minion

  'type:tor':
    - match: grain
    - salt.minion
    - yum.repo.tor
    - tor
    - yum.repo.nginx
    - nginx
    - nginx.service.enabled

  'type:squid':
    - match: grain
    - salt.minion
    - squid
