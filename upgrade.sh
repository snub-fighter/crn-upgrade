#!/bin/bash
echo "Upgrading Casinocoind service to latest "
echo " You will be prompted for your password "
echo " Ensure you are not root - USE SUDO USER "
cd ~

sudo rm casinocoind* 

sudo systemctl stop casinocoind.service

sudo rm /usr/bin/casinocoind && sudo rm /opt/casinocoind/bin/casinocoind

sudo wget https://github.com/casinocoin/casinocoind/releases/download/v4.0.6/casinocoind-18

sudo mv casinocoind-18 casinocoind

sudo chmod 777 casinocoind

sudo cp casinocoind /usr/bin/ && sudo cp casinocoind /opt/casinocoind/bin/

sudo systemctl start casinocoind.service

sudo rm casinocoind

