# network initialization for centOS 7 minimal
# name of ifcfg-enp0s3 might be different 
sed -i "15s/ONBOOT=no/ONBOOT=yes/" /etc/sysconfig/network-scripts/ifcfg-enp0s3
systemctl restart network