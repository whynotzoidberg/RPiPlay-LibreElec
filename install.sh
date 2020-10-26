#!/bin/bash
cd ~/
mkdir gitapp
cd gitapp
wget https://raw.githubusercontent.com/sousasov/RPiPlay-LibreElec/master/gitapp/Dockerfile
docker build .
echo -n "Enter Successfully built number > "
read number
echo "You entered: $number"
cd ~/
rm -rf .profile
touch .profile
echo "function git () {" >> .profile
echo "(docker run -ti --rm -v "'${HOME}'":/root -v "'$(pwd)'":/git $number "'"$@"'")" >> .profile
echo "}" >> .profile
source ~/.profile
rm -rf ~/gitapp
cd /storage
git clone https://github.com/sousasov/RPiPlay-LibreElec
cd /storage/RPiPlay-LibreElec/RPiPlayBuild
chmod +x build_with_docker.sh
./build_with_docker.sh
chmod +x /storage/RpiPlay/rpiplay
cd /storage/.config/
rm -rf autostart.sh
touch autostart.sh
echo -n "Enter Name of Device > "
read device
echo "You entered: $device"
cat <<EOT >> autostart.sh
(
cd /storage/RpiPlay/
/storage/RpiPlay/rpiplay -n $device -b -a hdmi 2>&1 &
) &
EOT
chmod +x autostart.sh
echo "Cleaning temp files"
rm -rf /storage/RPiPlay-LibreElec
cd ~/
rm -rf install.sh 
echo "Instalation is done now I restarting LibreElec. After restart AirPlay starts working"
shutdown -r now

