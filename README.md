centOS 7 minimal에 패키지 설치 및 초기 작업 수행하는 스크립트입니다.

설치되는 패키지 목록은 다음과 같습니다
 - vim
 - apache 2.4.6 (디폴트)
 - php 7.3 (2020.1.14기준 remi에서 최신)
 - mariadb 10.4

tar.gz 다운로드 링크: https://api.github.com/repos/kangyb1014/centOS7_minimal_init/tarball

초기 설정
1.네트워크 잡아줌. [주의]마지막 ifcfg-enp0s3 파일의 이름이 다를 수 있습니다.
 sed -i "15s/ONBOOT=no/ONBOOT=yes/" /etc/sysconfig/network-scripts/ifcfg-enp0s3
 systemctl restart network


2.다운로드 및 스크립트 실행
 wget https://api.github.com/repos/kangyb1014/centOS7_minimal_init/tarball
 mv ./tarball ./tarball.tar.gz
 tar -xvf tarball.tar.gz
 cd tarball
 chmod -R 777 ./kangyb1014-centOS7_minimal_init-3517667/*
 ./kangyb1014-centOS7_minimal_init-3517667/centOS_7_minimal_installation.sh

