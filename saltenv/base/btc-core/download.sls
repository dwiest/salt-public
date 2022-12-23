{% from "btc-core/map.jinja" import btc_core with context %}

btc-core-pkg:
  file.managed:
    - name   : {{btc_core.tarball.name}}
    - source : {{btc_core.tarball.source}}
{% if btc_core.tarball.source_hash is defined %}
    - source_hash: {{btc_core.tarball.source_hash}}
{% else  %}
    - skip_verify: true
{% endif %}
    - user   : {{btc_core.tarball.user}}
    - group  : {{btc_core.tarball.group}}
    - mode   : {{btc_core.tarball.mode}}
    - unless : test -e {{btc_core.tarball.name}}

btc-core-keys:
  file.managed:
    - name   : /home/ec2-user/laanwj-releases.asc
    - source : {{btc_core.tarball.pgp_key}}
    - skip_verify: true
    - user   : {{btc_core.tarball.user}}
    - group  : {{btc_core.tarball.group}}
    - mode   : {{btc_core.tarball.mode}}

btc-core-signatures:
  file.managed:
    - name   : /home/ec2-user/SHA256SUM.asc
    - source : {{btc_core.tarball.sigfile}}
    - skip_verify: true
    - user   : {{btc_core.tarball.user}}
    - group  : {{btc_core.tarball.group}}
    - mode   : {{btc_core.tarball.mode}}
