#!/bin/bash
NS=$( cat /etc/xray/nsdomain )
PUB=$( cat /etc/slowdns/server.pub )
domain=$(cat /etc/xray/domain)


cd /etc/systemd/system/
rm -rf kyt.service
cd
grenbo="\e[92;1m"
NC='\e[0m'

cd /usr/bin
rm -rf kyt
rm kyt.*
rm -rf bot
rm bot.*
apt update && apt upgrade
apt install neofetch -y
apt install python3 python3-pip git
cd /usr/bin
wget https://dpvpn.me/botol/bot.zip
unzip bot.zip
mv bot/* /usr/bin
chmod +x /usr/bin/*
rm -rf bot.zip
clear
wget https://dpvpn.me/botol/kyt2.zip
unzip kyt2.zip
pip3 install -r kyt/requirements.txt
clear


echo ""
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " \e[44;97;1m          ADD BOT CREATE PUBLIC          $NC"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -e -p "Bot Token : " bottoken
echo -e BOT_TOKEN='"'$bottoken'"' >> /usr/bin/kyt/var.txt
echo -e DOMAIN='"'$domain'"' >> /usr/bin/kyt/var.txt
echo -e PUB='"'$PUB'"' >> /usr/bin/kyt/var.txt
echo -e HOST='"'$NS'"' >> /usr/bin/kyt/var.txt
echo -e "#bot# $bottoken $admin" >/etc/bot/.bot.db
clear

cat > /etc/systemd/system/kyt.service << END
[Unit]
Description=Simple kyt - @kyt
After=network.target

[Service]
WorkingDirectory=/usr/bin
ExecStart=/usr/bin/python3 -m kyt
Restart=always

[Install]
WantedBy=multi-user.target
END

systemctl start kyt 
systemctl enable kyt
systemctl restart kyt

echo -e " \033[1;97;41m     MENDOWNLOAD ASSET TAMBAHAN......    \033[0m"





wget -q -O /usr/bin/addnoobz "https://dpvpn.me/botol/addnoobz.sh" && chmod +x /usr/bin/addnoobz






wget -q -O /usr/bin/add-vless "https://dpvpn.me/botol/add-vless.sh" && chmod +x /usr/bin/add-vless

wget -q -O /usr/bin/addtr "https://dpvpn.me/botol/addtr.sh" && chmod +x /usr/bin/addtr


wget -q -O /usr/bin/addws "https://dpvpn.me/botol/addws.sh" && chmod +x /usr/bin/addws


wget -q -O /usr/bin/addss "https://dpvpn.me/botol/addss.sh" && chmod +x /usr/bin/addss

wget -q -O /usr/bin/cek-ssh "https://dpvpn.me/botol/cek-ssh.sh" && chmod +x /usr/bin/cek-ssh



wget -q -O /usr/bin/cek-ss "https://dpvpn.me/botol/cek-ss.sh" && chmod +x /usr/bin/cek-ss




wget -q -O /usr/bin/cek-tr "https://dpvpn.me/botol/cek-tr.sh" && chmod +x /usr/bin/cek-tr

wget -q -O /usr/bin/cek-vless "https://dpvpn.me/botol/cek-vless.sh" && chmod +x /usr/bin/cek-vless

wget -q -O /usr/bin/cek-ws "https://dpvpn.me/botol/cek-ws.sh" && chmod +x /usr/bin/cek-ws

wget -q -O /usr/bin/del-vless "https://dpvpn.me/botol/del-vless.sh" && chmod +x /usr/bin/del-vless




wget -q -O /usr/bin/cek-noobz "https://dpvpn.me/botol/cek-noobz.sh" && chmod +x /usr/bin/cek-noobz



wget -q -O /usr/bin/deltr "https://dpvpn.me/botol/deltr.sh" && chmod +x /usr/bin/deltr

wget -q -O /usr/bin/delws "https://dpvpn.me/botol/delws.sh" && chmod +x /usr/bin/delws



wget -q -O /usr/bin/delss "https://dpvpn.me/botol/delss.sh" && chmod +x /usr/bin/delss



wget -q -O /usr/bin/renew-ss "https://dpvpn.me/botol/renew-ss.sh" && chmod +x /usr/bin/renew-ss


wget -q -O /usr/bin/renewtr "https://dpvpn.me/botol/renewtr.sh" && chmod +x /usr/bin/renewtr


wget -q -O /usr/bin/renewvless "https://dpvpn.me/botol/renewvless.sh" && chmod +x /usr/bin/renewvless


wget -q -O /usr/bin/renewws "https://dpvpn.me/botol/renewws.sh" && chmod +x /usr/bin/renewws


wget -q -O /usr/bin/cek-mws "https://dpvpn.me/botol/cek-mws.sh" && chmod +x /usr/bin/cek-mws

wget -q -O /usr/bin/cek-mvs "https://dpvpn.me/botol/cek-mvs.sh" && chmod +x /usr/bin/cek-mvs


wget -q -O /usr/bin/cek-mss "https://dpvpn.me/botol/cek-mss.sh" && chmod +x /usr/bin/cek-mss



wget -q -O /usr/bin/cek-mts "https://dpvpn.me/botol/cek-mts.sh" && chmod +x /usr/bin/cek-mts

cd /root
rm -rf kyt.sh
echo "Done"
echo "Your Data Bot"
echo -e "==============================="
echo "Token Bot         : $bottoken"
echo "Domain        : $domain"
echo -e "==============================="
echo "Setting done"
clear

echo " Installations complete, type /menu on your bot"
