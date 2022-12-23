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
    - name   : /home/ec2-user/requirements.txt
      source : salt://python/requirements.txt?saltenv=aws-root
      user   : ec2-user
      group  : ec2-user
      mode   : 0640

