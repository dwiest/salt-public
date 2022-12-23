{% from "phpmyadmin/map.jinja" import phpmyadmin with context %}

phpmyadmin-pkg:
  pkg.installed:
{% for item in phpmyadmin.pkg.keys() %}
    - {{item}}: {{phpmyadmin.pkg[item]}}
{% endfor %}
