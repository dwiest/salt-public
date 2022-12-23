{% from "django/map.jinja" import django with context %}

{% if django.projects is defined %}
{% for project in django.projects %}
django-projects-{{loop.index}}:
  cmd.run:
    - name   : {% if project.venv is defined %}. {{project.venv}}/bin/activate; {%endif%}python -m django startproject {{project.name}}
    - cwd    : {{project.dir}}
    - runas  : {{project.user}}
    - unless : test -d {{project.dir}}/{{project.name}}

{% if project.settings is defined %}
django-projects-{{loop.index}}-settings:
  file.managed:
    - name   : {{project.dir}}/{{project.name}}/{{project.name}}/settings.py
    - source : {{project.settings}}
    - user   : {{project.user}}
    - group  : {{project.group}}
    - mode   : 0640
{% endif %}

{% if project.urls is defined %}
django-projects-{{loop.index}}-urls:
  file.managed:
    - name   : {{project.dir}}/{{project.name}}/{{project.name}}/urls.py
    - source : {{project.urls}}
    - user   : {{project.user}}
    - group  : {{project.group}}
    - mode   : 0640
{% endif %}
{% endfor%}
{% endif %}
