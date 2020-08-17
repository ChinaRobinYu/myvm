pwd=$1
echo -e "$pwd\n$pwd" | (passwd root)
sed -ri '/^PasswordAuthentication/cPasswordAuthentication yes' /etc/ssh/sshd_config
systemctl restart sshd
echo 'succsss'
echo 'ip'
hostname -I
echo 'ssh 登录密码 '+$pwd