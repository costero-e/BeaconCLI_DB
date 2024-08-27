sed -i '/^#PermitRootLogin/s/^#//g' /etc/ssh/sshd_config
sed -i '34s/prohibit-password/yes/' /etc/ssh/sshd_config
service ssh start
cat /etc/shadow | grep root
echo "root:hola"|chpasswd