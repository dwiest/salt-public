{% from "php/map.jinja" import php with context %}

{% for dir in php.dirs %}
php-dirs-{{loop.index}}:
  file.directory:
# add handling for special attributes like require and watch_in?
{% for attribute in dir.keys() %}
    - {{attribute}}: {{dir[attribute]}}
{% endfor %}
{% endfor %}
