{% from "nagios/map.jinja" import nagios with context %}

nagios-config-resources_file:
  file.managed:
    - name  : {{nagios.resource_config.name}}
    - user  : {{nagios.resource_config.user}}
    - group : {{nagios.resource_config.group}}
    - mode  : {{nagios.resource_config.mode}}

nagios_resources:
  file.blockreplace:
    - name                : {{nagios.resource_config.name}}
    - source              : {{nagios.resource_config.source}}
    - marker_start        : '# --- Managed by Salt ---'
    - marker_end          : '# --- End ---'
    - append_if_not_found : True
    - template            : jinja
    - context:
        macros: {{nagios.resource_config.macros|yaml}}
