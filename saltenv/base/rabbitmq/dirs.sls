{% from "rabbitmq/map.jinja" import rabbitmq with context %}

rabbitmq_bin_dir:
  file.directory:
    - name     : /home/rabbitmq/bin
    - user     : {{rabbitmq.user}}
    - group    : {{rabbitmq.group}}
    - mode     : 755
    - makedirs : True

rabbitmq_config_home:
  file.directory:
    - name  : {{rabbitmq.config.home.name}}
    - user  : root
    - group : root
    - mode  : {{rabbitmq.config.home.mode}}

rabbitmq_logdir:
  file.directory:
    - name  : {{rabbitmq.logdir}}
    - user  : {{rabbitmq.user}}
    - group : {{rabbitmq.group}}
    - mode  : {{rabbitmq.logdir_mode}}

rabbitmq_mnesia_base:
  file.directory:
    - name     : {{rabbitmq.env_config.mnesia_base}}
    - user     : {{rabbitmq.user}}
    - group    : {{rabbitmq.group}}
    - mode     : 0740
    - makedirs : True
    - require:
      - file  : var_lib_rabbitmq

var_lib_rabbitmq:
  file.directory:
    - name  : /var/lib/rabbitmq
    - user  : {{rabbitmq.user}}
    - group : {{rabbitmq.group}}
    - mode  : 0714
