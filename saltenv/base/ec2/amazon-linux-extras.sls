{% from "ec2/map.jinja" import ec2 with context %}

{% for package in ec2['amazon-linux-extras'].install %}
ec2-amazon_linux_extras-{{loop.index}}:
  cmd.run:
    - name: {% if ec2['amazon-linux-extras'].proxy is defined %}export HTTPS_PROXY={{ec2['amazon-linux-extras'].proxy}};{%endif%}amazon-linux-extras install {{package}}
    - unless: {% if ec2['amazon-linux-extras'].proxy is defined %}export HTTPS_PROXY={{ec2['amazon-linux-extras'].proxy}};{%endif%}amazon-linux-extras list | grep {{package}} | grep -q enabled
{% endfor %}
