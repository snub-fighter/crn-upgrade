#!/bin/bash
echo "Upgrading Casinocoind service to latest "
echo " You will be prompted for your password "
echo " Ensure you are not root - USE SUDO USER "


rm casinocoind* 

systemctl stop casinocoind.service

rm /usr/bin/casinocoind && sudo rm /opt/casinocoind/bin/casinocoind

wget https://github.com/casinocoin/casinocoind/releases/download/v4.0.6/casinocoind-18

mv casinocoind-18 casinocoind

chmod 777 casinocoind

cp casinocoind /usr/bin/ && sudo cp casinocoind /opt/casinocoind/bin/

systemctl start casinocoind.service
rm casinocoind

