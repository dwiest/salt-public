libreswan-enable_ip_forward:
  cmd.run:
    - name: sysctl -w net.ipv4.ip_forward=1
    - onlyif: \[ `sysctl -n net.ipv4.ip_forward` -eq 0 \]

libreswan-sysctl_conf:
  file.managed:
    - name   : /etc/sysctl.d/10-libreswan.conf
    - source : salt://libreswan/10-libreswan.conf
    - user   : root
    - group  : root
    - mode   : 0644
