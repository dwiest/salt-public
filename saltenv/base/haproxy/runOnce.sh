echo '---HAproxy steps---'
if [ $HAPROXY_COMBINED_PEM ]; then
	echo 'Copying combined.pem from S3 to /home/ec2-user/combined.pem'
	aws s3 cp $HAPROXY_COMBINED_PEM /home/ec2-user/combined.pem
fi
if [ $HAPROXY_ENABLED ]; then
	echo 'Enabling the haproxy service'
	systemctl enable haproxy.service
	echo 'Starting the haproxy service'
	systemctl start haproxy.service
fi
echo '---Haproxy done--'
