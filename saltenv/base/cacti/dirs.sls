{% from "cacti/map.jinja" import cacti with context %}

{% for dir in cacti.dirs %}
cacti-dirs-{{loop.index}}:
  file.directory:
# add handling for special attributes like require and watch_in?
{% for attribute in dir.keys() %}
    - {{attribute}}: {{dir[attribute]}}
{% endfor %}
{% endfor %}
