echo '--- salt-minion steps ---'
ID=`curl -s http://169.254.169.254/1.0/meta-data/instance-id`;sed -i "s/ec2instanceid:.*/ec2instanceid: $ID/" /etc/salt/minion.d/local.conf

if [ $SALT_MINION_ID ]; then
	echo "Setting salt-minion id to: $SALT_MINION_ID"
	echo "$SALT_MINION_ID" > /etc/salt/minion_id
fi

if [ $SALT_MINION_ENABLED ]; then
	echo "Enabled the salt-minion service."
	systemctl enable salt-minion.service
	echo "Starting the salt-minion service."
	systemctl start salt-minion.service
fi
