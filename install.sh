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
touch .profile
cat <<EOT >> .profile
function git () {
(docker run -ti --rm -v '${HOME}':/root -v '$(pwd)':/git $number '"$@"')
}
EOT
source ~/.profile
rm -rf ~/gitapp
cd /storage
git clone https://github.com/sousasov/RPiPlay-LibreElec
cd git /storage/RPiPlay-LibreElec/RPiPlayBuild
./build_with_docker.sh
chmod +x /storage/RpiPlay/rpiplay
cd /storage/.config/
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
echo "Instalation is done now I restarting LibreElec. After restart AirPlay is working"
shutdown -r now

