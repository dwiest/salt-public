libreswan-disable_send_redirects:
  cmd.run:
    - name: find /proc/sys/net/ipv4/conf -name send_redirects -exec sh -c "echo 0 > {}" \;

libreswan-disable_accept_redirects:
  cmd.run:
    - name: find /proc/sys/net/ipv4/conf -name accept_redirects -exec sh -c "echo 0 > {}" \;
