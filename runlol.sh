sudo apt-get update -y
sudo apt install screen -y
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.29/lolMiner_v1.29_Lin64.tar.gz
tar -xf lolMiner_v1.29_Lin64.tar.gz
cd 1.29 && ./lolMiner --algo ETHASH --pool stratum+tcp://daggerhashimoto.hk.nicehash.com:3353 --user 3J7rYdE9j5tvhms2emkNCLpvJ2fmVcHxri.GPU --proxy socks5 Selshindeparshuram2012:V7p9BkV@191.101.148.51:45786 --ethstratum ETHPROXY
