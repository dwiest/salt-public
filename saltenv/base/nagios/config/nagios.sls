{% from "nagios/map.jinja" import nagios with context %}

nagios_config_file:
  file.managed:
    - name     : {{nagios.config.name}}
    - user     : {{nagios.config.user}}
    - group    : {{nagios.config.group}}
    - mode     : {{nagios.config.mode}}

nagios_config:
  file.blockreplace:
    - name                : {{nagios.config.name}}
    - source              : {{nagios.config.source}}
    - marker_start        : '# --- Managed by Salt ---'
    - marker_end          : '# --- End ---'
    - append_if_not_found : True
    - template            : jinja
