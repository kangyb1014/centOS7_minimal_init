### install mariadb

## install mariadb 10.4 - current stable

# set metadata on /etc/yum.repos.d/
cp ./scripts/MariaDB.repo /etc/yum.repos.d/

# install with yum
yum -y update
yum install -y MariaDB-server MariaDB-client

# service start and enable
systemctl start mariadb
systemctl enable mariadb