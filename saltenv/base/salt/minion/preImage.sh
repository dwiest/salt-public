echo '--- salt-minion pre-imaging steps ---'
systemctl disable salt-minion.service
sed -i "s/ec2instanceid:.*/ec2instanceid: /" /etc/salt/minion.d/local.conf
rm -f /etc/salt/minion_id
