# RPiPlay-LibreElec automatic install scripts
Scripts to automatic install of https://github.com/FD-/RPiPlay with use docker file from https://github.com/nicolaspernoud/RPiPlay-docker-builder

## Requirements
* Raspberry-pi2-4
* LibreElec 9.2.x
* Docker addon in Kodi
* enabled SSH to LibreElec
* Disabled Airplay in Kodi

## Warning
This script replace .profile and autostart.sh if you modify this files before. You must do it again. Bonus is working git command in LibreElec command line throught Docker.

## Install steps
1. SSH to LibreElec
2. ``` cd ~/ ```
3. ``` wget https://raw.githubusercontent.com/whynotzoidberg/RPiPlay-LibreElec/master/install.sh ```
4. ``` chmod +x install.sh ```
5. ``` ./install.sh ```
6. follow instructions provides by install.sh
