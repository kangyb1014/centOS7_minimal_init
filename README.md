centOS 7 minimal에 패키지 설치 및 초기 작업 수행하는 스크립트
설치되는 패키지 목록


apache 2.4.6 (디폴트)
php 7.3 (2020.1.14기준 remi에서 최신)
mariadb 10.4

링크: https://api.github.com/repos/kangyb1014/centOS7_minimal_init/tarball


초기 설정
1.네트워크 잡아줌
sed -i "15s/ONBOOT=no/ONBOOT=yes/" /etc/sysconfig/network-scripts/ifcfg-enp0s3
systemctl restart network


2.다운로드 및 스크립트 실행
wget https://api.github.com/repos/kangyb1014/centOS7_minimal_init/tarball
mv ./tarball ./tarball.tar.gz
tar -xvf aaa.tar
chmod -R 777 ./kangyb1014-centOS7_minimal_init-3517667/*
./kangyb1014-centOS7_minimal_init-3517667/centOS_7_minimal_installation.sh
