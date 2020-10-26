# RPiPlay-LibreElec automatic install scripts
Scripts to automatic install of https://github.com/FD-/RPiPlay with use docker file from https://github.com/nicolaspernoud/RPiPlay-docker-builder

## Requirements
* Raspberry-pi2-4
* LibreElec 9.2.x
* Docker addon in Kodi
* enabled SSH to LibreElec

## Warning
This script replace .profile and autostart.sh if you modify this files before. You must do it again. Bonus is working git command in LibreElec command line throught Docker.

## Install steps
1. SSH to LibreElec
2. ``` cd ~/ ```
3. ``` wget https://raw.githubusercontent.com/sousasov/RPiPlay-LibreElec/master/install.sh ```
4. ``` chmod +x install.sh ```
5. ``` ./install.sh ```
6. follow instructions provides by install.sh


# RPiPlay-LibreElec automatic install scripts
Skript na automatickou instalaci https://github.com/FD-/RPiPlay s použitím dockeru a https://github.com/nicolaspernoud/RPiPlay-docker-builder

## Požadavky
* Raspberry-pi2-4
* LibreElec 9.2.x
* Docker addon v Kodi
* zapnuté SSH v LibreElec

## Varování
Tento skript nahrazuje .profile a autostart.sh pokud døíve byla provedena zmena tìchto souboru. Musíte ji provést znovu.
Zaroven jako vedlejsi efekt umoznuje git prikaz v LibreElec prikazove radce skrze Docker

## Instalacní kroky
1. SSH do LibreElec
2. ``` cd ~/ ```
3. ``` wget https://raw.githubusercontent.com/sousasov/RPiPlay-LibreElec/master/install.sh ```
4. ``` chmod +x install.sh ```
5. ``` ./install.sh ```
6. nasledujte instrukce install.sh

