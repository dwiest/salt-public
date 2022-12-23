{% from "yum/map.jinja" import yum with context %}

yum-config-file:
  file.managed:
    - name   : /etc/yum.conf
    - user   : root
    - group  : root
    - mode   : 0644

yum-config-local:
  file.blockreplace:
    - name: /etc/yum.conf
    - marker_start: "# START managed zone yum"
    - marker_end : "# END managed zone yum"
    - append_if_not_found: true
    - content: |
        proxy=http://squid:3128
        #proxy_username=
        #proxy_password=
    - require:
      - yum-config-file
