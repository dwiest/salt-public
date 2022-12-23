{% from "ec2/map.jinja" import ec2 with context %}

ec2-runonce-file:
  file.managed:
    - name: /home/ec2-user/runOnce.sh
    - user: ec2-user
    - group: ec2-user
    - mode: 0640

ec2-runonce-file_contents:
  file.blockreplace:
    - name: /home/ec2-user/runOnce.sh
    - marker_start: "# START managed zone ec2"
    - marker_end : "# END managed zone ec2"
    - prepend_if_not_found: true
    - source: salt://ec2/runOnce.sh
    - require:
      - ec2-runonce-file
