{% from "nagios/map.jinja" import nagios with context %}

{% for dir in nagios.dirs %}
nagios-dirs-{{loop.index}}:
  file.directory:
# add handling for special attributes like require and watch_in?
{% for attribute in dir.keys() %}
    - {{attribute}}: {{dir[attribute]}}
{% endfor %}
{% endfor %}
