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
yum -y install php-fpm

