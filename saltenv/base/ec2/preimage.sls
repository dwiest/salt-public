{% from "ec2/map.jinja" import ec2 with context %}

ec2-preimage-file:
  file.managed:
    - name  : /home/ec2-user/preImage.sh
    - user  : ec2-user
    - group : ec2-user
    - mode  : 0640

ec2-preimage-file_contents:
  file.blockreplace:
    - name                 : /home/ec2-user/preImage.sh
    - marker_start         : "# START managed zone ec2"
    - marker_end           : "# END managed zone ec2"
    - prepend_if_not_found : true
    - source               : salt://ec2/preImage.sh
    - require:
      - ec2-preimage-file
