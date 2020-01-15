### install php

## php 5.7 - default (2020.1)
#yum -y install php

## php 7.3
# get packages with wget
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
wget http://rpms.remirepo.net/enterprise/remi-release-7.rpm

# 
rpm -Uvh remi-release-7.rpm epel-release-latest-7.noarch.rpm

# install yum-config-manager
yum -y install epel-release yum-utils
# disable php5.4
sudo yum-config-manager --disable remi-php54
# activate php 7.3
sudo yum-config-manager --enable remi-php73
# install php 7.3
yum install -y php php-common php-opcache php-mcrypt php-cli php-gd php-curl php-mysql -y

# httpd.conf 파일 수정하여 index.php 추가
sed -i 's/index.html/index.php index.html/' /etc/httpd/conf/httpd.conf

sed -i 's,\(\AddType application/x-gzip .gz .tgz.*\),\1\n\tAddType application/x-httpd-php .php .html .htm .inc\n\tAddType application/x-httpd-php-source .phps,g' /etc/httpd/conf/httpd.conf

# document root에 index.php 추가
cp ./scripts/index.php /var/www/html

chmod 755 /var/www/html/index.php

# apache 재시작
systemctl restart httpd