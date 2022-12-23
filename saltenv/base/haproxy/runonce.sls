{% from "ec2/map.jinja" import ec2 with context %}

include:
  - ec2.runonce

haproxy-runonce:
  file.blockreplace:
    - name: /home/ec2-user/runOnce.sh
    - marker_start: "# START managed zone haproxy"
    - marker_end: "# END managed zone haproxy"
    - append_if_not_found: true
    - source: salt://haproxy/runOnce.sh
    - require:
      - ec2-runonce-file

