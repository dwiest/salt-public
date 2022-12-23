{% from "dante/map.jinja" import dante with context %}

dante-uncompress:
  archive.extracted:
    - name   : {{dante.tarball.dir}}
    - source : {{dante.tarball.name}}
{% if dante.tarball.source_hash is defined %}
    - source_hash: {{dante.tarball.source_hash}}
{% else  %}
    - skip_verify: true
{% endif %}
    - user   : {{dante.tarball.user}}
    - group  : {{dante.tarball.group}}
    - mode   : {{dante.tarball.mode}}
