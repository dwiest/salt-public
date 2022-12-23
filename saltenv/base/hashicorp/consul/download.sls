{% from "hashicorp/map.jinja" import hashicorp with context %}

hashicorp-consul-sha256-download:
  cmd.run:
    - name: if [ -e `basename {{hashicorp.consul.sha256.source}}` ]; then echo 'already present, not downloading'; else curl -x http://squid:3128 -O {{hashicorp.consul.sha256.source}}; fi
    - cwd: {{hashicorp.consul.tmpdir}}

hashicorp-consul-download:
  cmd.run:
    - name: if [ -e `basename {{hashicorp.consul.agent.source}}` ]; then echo 'already present, not downloading'; else curl -x http://squid:3128 -O {{hashicorp.consul.agent.source}}; fi
    - cwd: {{hashicorp.consul.tmpdir}}

hashicorp-consul-download-verify:
  cmd.run:
    - name: grep linux_amd64 ./consul_1.13.3_SHA256SUMS | sha256sum -c -; if [ $? != 0 ]; then /bin/false; else /bin/true; fi
    - cwd: {{hashicorp.consul.tmpdir}}
