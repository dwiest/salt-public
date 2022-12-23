{% from "salt/minion/map.jinja" import salt_minion with context %}

include:
  - ec2.preimage

salt-minion-preimage_steps:
  file.blockreplace:
    - name                : /home/ec2-user/preImage.sh
    - marker_start        : "# BEGIN managed zone salt-minion"
    - marker_end          : "# END managed zone salt-minion"
    - append_if_not_found : true
    - source              : salt://salt/minion/preImage.sh
    - require:
      - sls: ec2.preimage
