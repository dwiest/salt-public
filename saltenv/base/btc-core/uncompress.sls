{% from "btc-core/map.jinja" import btc_core with context %}

btc-core-uncompress:
  archive.extracted:
    - name   : {{btc_core.tarball.dir}}
    - source : {{btc_core.tarball.name}}
{% if btc_core.tarball.source_hash is defined %}
    - source_hash: {{btc_core.tarball.source_hash}}
{% else  %}
    - skip_verify: true
{% endif %}
    - user   : {{btc_core.tarball.user}}
    - group  : {{btc_core.tarball.group}}
    - mode   : {{btc_core.tarball.mode}}
