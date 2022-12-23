{% from "yum/repo/tor/map.jinja" import tor with context %}

yum-repo-tor-install:
  file.managed:
    - name        : {{tor.repo.name}}
    - source      : {{tor.repo.source}}
    - skip_verify : True
    - user        : root
    - group       : root
    - mode        : 0644
