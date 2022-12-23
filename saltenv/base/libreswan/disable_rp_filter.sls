libreswan-disable_rp_filter-all:
  cmd.run:
    - name: echo 0 > /proc/sys/net/ipv4/conf/all/rp_filter

libreswan-disable_rp_filter-default:
  cmd.run:
    - name: echo 0 > /proc/sys/net/ipv4/conf/default/rp_filter

libreswan-disable_rp_filter-eth0:
  cmd.run:
    - name: echo 0 > /proc/sys/net/ipv4/conf/eth0/rp_filter
