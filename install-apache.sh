
#!/bin/bash

start = "\033[38;5;149m"
end = "\033[m"

echo "$start This script will install Apache server on Debian based machines ~ Made specifically for Ubuntu server 20.10 $end"
echo "$start Please execute this script as stem on VPS or machine to install apache ~ Can be used through SSH $end "
echo "$start Beggining installation $end"
echo "$start ↓ Input password for root (will be needed for installation process) $end"
read password
echo "$start Updating apt $end"
sudo -p $password apt update
echo "$start Installing apache2 package $end"
sudo -p $password apt install apache2
echo "$start ↓ ufw application profiles $end"
sudo -p $password ufw app list
echo "$start Allowing apache acces to port 80 only $end"
echo "$start Enabling ufw $end"
sudo -p $password ufw enable
echo "$start ufw status ↓ $end"
sudo -p $password ufw status
echo "$start Checking if apache service is running $end"
sudo -p $password systemctl status apache2
echo "$start \n This is host name for your apache server ↓ $end"
hostname -I
echo "\n $start ~ If you got here, apache server is succesfully installed in your machine ~ $end"
