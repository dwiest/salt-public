{%- from "python/map.jinja" import python with context %}

{%- for env in python.venv %}
python-venv-{{loop.index}}:
  virtualenv.managed:
    {%- for key,val in env.items() %}
    - {{key}}: {{val}}
    {%- endfor %}
{%- endfor %}
