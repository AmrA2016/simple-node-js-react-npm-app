ssh -i mynew_key ec2-user@172.31.21.220 <<EOF
cd /usr/share/simple-node-js-react-npm-app
serve -s build
exit
EOF