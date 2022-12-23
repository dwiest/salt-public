{% from "nginx/map.jinja" import nginx with context %}

{% for dir in nginx.dirs %}
nginx-dirs-{{loop.index}}:
  file.directory:
# add handling for special attributes like require and watch_in?
{% for attribute in dir.keys() %}
    - {{attribute}}: {{dir[attribute]}}
{% endfor %}
{% endfor %}
