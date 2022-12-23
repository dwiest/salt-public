{% from "ec2/map.jinja" import ec2 with context %}

{%- if ec2.files is defined %}
{%- for file in ec2.files %}
ec2-files-{{loop.index}}:
  file.managed:
{%- for key,val in file.items() %}
    - {{key}}: {{val}} 
{% endfor %}
{% endfor %}
{%- endif %}
