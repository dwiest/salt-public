{% from "dante/map.jinja" import dante with context %}

dante-pkg:
  file.managed:
    - name   : {{dante.tarball.name}}
    - source : {{dante.tarball.source}}
{% if dante.tarball.source_hash is defined %}
    - source_hash: {{dante.tarball.source_hash}}
{% else  %}
    - skip_verify: true
{% endif %}
    - user   : {{dante.tarball.user}}
    - group  : {{dante.tarball.group}}
    - mode   : {{dante.tarball.mode}}
    - unless : test -e {{dante.tarball.name}}
