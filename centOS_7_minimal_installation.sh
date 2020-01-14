#실행권한때문에 밑의 명령어 한번 해 줘야 함
#chmod -R 777 ./*

## set network
./network_init.sh

## apache install
./apache_install.sh

## php install
./php_install.sh

## mariaDB install
mariaDB_install.sh