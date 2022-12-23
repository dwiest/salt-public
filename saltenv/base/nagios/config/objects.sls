{% from "nagios/map.jinja" import nagios with context %}

{% for object in nagios.objects %}
nagios-objects-{{loop.index}}:
  file.managed:
# add handling for special attributes like require and watch_in?
{% for attribute in object.keys() %}
    - {{attribute}}: {{object[attribute]}}
{% endfor %}
{% endfor %}
