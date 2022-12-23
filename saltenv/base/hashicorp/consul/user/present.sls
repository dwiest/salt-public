hashicorp-consul-user:
  user.present:
    - name             : consul
    - fullname         : consul
    - shell            : /bin/bash
    - createhome       : False
    - enforce_password : False

