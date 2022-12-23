ec2:
  amazon-linux-extras:
    install:
      - epel
  files:
    - name   : /home/ec2-user/uwsgi.ini
      source : salt://uwsgi/uwsgi.ini
      user   : ec2-user
      group  : ec2-user
      mode   : 0640

