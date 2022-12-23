{%- from "uwsgi/map.jinja" import uwsgi with context %}

uwsgi-ini:
  file.managed:
{%- for key,val in uwsgi.ini.items() %}
    - {{key}}: {{val}}
{%- endfor %}
