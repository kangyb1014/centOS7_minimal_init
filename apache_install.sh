### install apache 

## install apache - current default 2.4.6 (2020.1)
yum -y install httpd

## set firewall
# enable port 80(http) & 443(https)
firewall-cmd --permanent --add-service=http 
firewall-cmd --permanent --add-service=https


# enable and start with systemctl
systemctl enable httpd
systemctl start httpd
