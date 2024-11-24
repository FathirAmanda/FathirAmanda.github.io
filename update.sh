#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
echo "You need to run this script as root"
exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
echo "OpenVZ is not supported"
exit 1
fi
echo ""
version=$(cat /home/ver)
ver=$( curl https://dpvpn.me/sc/version )
clear
line=$(cat /etc/line)
below=$(cat /etc/below)
back_text=$(cat /etc/back)
number=$(cat /etc/number)
box=$(cat /etc/box)
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info1="${Green_font_prefix}($version)${Font_color_suffix}"
Info2="${Green_font_prefix}(OLD VERSION)${Font_color_suffix}"
Error="Version ${Green_font_prefix}[$ver]${Font_color_suffix} available${Red_font_prefix}[Please Update]${Font_color_suffix}"
version=$(cat /home/ver)
new_version=$( curl https://dpvpn.me/sc/version | grep $version )
if [ $version = $new_version ]; then
sts="${Info2}"
else
sts="${Error}"
fi
clear
loading() {
  local pid=$1
  local delay=0.1
  local spin='-\|/'

  while ps -p "$pid" > /dev/null; do
    printf "[%c] " "$spin"
    spin=${spin#?}${spin%"${spin#?}"}
    sleep $delay
    printf "\b\b\b\b\b\b"
  done

  printf "    \b\b\b\b"
}

cd /usr/bin
sleep 2 & loading $! & wget -q -O /usr/bin/usernew "https://dpvpn.me/sc/ssh/usernew.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/auto-reboot "https://dpvpn.me/sc/menu/auto-reboot.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/restart "https://dpvpn.me/sc/menu/restart.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/tendang "https://dpvpn.me/sc/ssh/tendang.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/clearcache "https://dpvpn.me/sc/menu/clearcache.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/running "https://dpvpn.me/sc/menu/running.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/speedtest "https://dpvpn.me/sc/ssh/speedtest_cli.py"
sleep 2 & loading $! & wget -q -O /usr/bin/menu-vless "https://dpvpn.me/sc/menu/menu-vless.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/menu-vmess "https://dpvpn.me/sc/menu/menu-vmess.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/menu-trojan "https://dpvpn.me/sc/menu/menu-trojan.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/menu-ssh "https://dpvpn.me/sc/menu/menu-ssh.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/menu-backup "https://dpvpn.me/sc/menu/menu-backup.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/menu "https://dpvpn.me/sc/menu/menu.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/menu1 "https://dpvpn.me/sc/theme/menu1.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/menu2 "https://dpvpn.me/sc/theme/menu2.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/menu3 "https://dpvpn.me/sc/theme/menu3.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/menu4 "https://dpvpn.me/sc/theme/menu4.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/menu5 "https://dpvpn.me/sc/theme/menu5.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/menu-webmin "https://dpvpn.me/sc/menu/menu-webmin.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/xp "https://dpvpn.me/sc/ssh/xp.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/update "https://dpvpn.me/sc/update.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/add-host "https://dpvpn.me/sc/ssh/add-host.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/certv2ray "https://dpvpn.me/sc/xray/certv2ray.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/menu-set "https://dpvpn.me/sc/menu/menu-set.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/about "https://dpvpn.me/sc/menu/about.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/menu-backup "https://dpvpn.me/sc/menu/menu-backup.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/trial "https://dpvpn.me/sc/ssh/trial.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/usernew "https://dpvpn.me/sc/ssh/usernew.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/add-tr "https://dpvpn.me/sc/xray/add-tr.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/del-tr "https://dpvpn.me/sc/xray/del-tr.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/cek-tr "https://dpvpn.me/sc/xray/cek-tr.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/trialtrojan "https://dpvpn.me/sc/xray/trialtrojan.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/renew-tr "https://dpvpn.me/sc/xray/renew-tr.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/add-ws "https://dpvpn.me/sc/xray/add-ws.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/del-ws "https://dpvpn.me/sc/xray/del-ws.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/cek-ws "https://dpvpn.me/sc/xray/cek-ws.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/renew-ws "https://dpvpn.me/sc/xray/renew-ws.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/trialvmess "https://dpvpn.me/sc/xray/trialvmess.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/add-vless "https://dpvpn.me/sc/xray/add-vless.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/del-vless "https://dpvpn.me/sc/xray/del-vless.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/cek-vless "https://dpvpn.me/sc/xray/cek-vless.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/renew-vless "https://dpvpn.me/sc/xray/renew-vless.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/trialvless "https://dpvpn.me/sc/xray/trialvless.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/menu-trial "https://dpvpn.me/sc/menu/menu-trial.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/menu-theme "https://dpvpn.me/sc/theme/menu-theme.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/bot2 "https://dpvpn.me/sc/bot/bot2.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/add-bot "https://dpvpn.me/sc/bot/add-bot.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/add-bot-bersama "https://dpvpn.me/sc/bot/add-bot-bersama.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/bot-bansos "https://dpvpn.me/sc/bot/bot-bansos.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/stop-bot "https://dpvpn.me/sc/bot/stop-bot.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/stop-bot2 "https://dpvpn.me/sc/bot/stop-bot2.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/restart-bot "https://dpvpn.me/sc/bot/restart-bot.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/restart-bot2 "https://dpvpn.me/sc/bot/restart-bot2.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/hapus-bot "https://dpvpn.me/sc/bot/hapus-bot.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/del-bot2 "https://dpvpn.me/sc/bot/del-bot2.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/update "https://dpvpn.me/sc/update.sh"
sleep 2 & loading $! & wget -q -O /usr/bin/menu-bot "https://dpvpn.me/sc/menu/menu-bot.sh"
sleep 2 & loading $! & chmod +x /usr/bin/usernew
sleep 2 & loading $! & chmod +x /usr/bin/auto-reboot
sleep 2 & loading $! & chmod +x /usr/bin/restart
sleep 2 & loading $! & chmod +x /usr/bin/tendang
sleep 2 & loading $! & chmod +x /usr/bin/clearcache
sleep 2 & loading $! & chmod +x /usr/bin/running
sleep 2 & loading $! & chmod +x /usr/bin/speedtest
sleep 2 & loading $! & chmod +x /usr/bin/menu-vless
sleep 2 & loading $! & chmod +x /usr/bin/menu-vmess
sleep 2 & loading $! & chmod +x /usr/bin/menu-theme
sleep 2 & loading $! & chmod +x /usr/bin/menu1
sleep 2 & loading $! & chmod +x /usr/bin/menu2
sleep 2 & loading $! & chmod +x /usr/bin/menu3
sleep 2 & loading $! & chmod +x /usr/bin/menu4
sleep 2 & loading $! & chmod +x /usr/bin/menu5
sleep 2 & loading $! & chmod +x /usr/bin/menu-trojan
sleep 2 & loading $! & chmod +x /usr/bin/menu-ssh
sleep 2 & loading $! & chmod +x /usr/bin/menu-backup
sleep 2 & loading $! & chmod +x /usr/bin/menu
sleep 2 & loading $! & chmod +x /usr/bin/menu-webmin
sleep 2 & loading $! & chmod +x /usr/bin/xp
sleep 2 & loading $! & chmod +x /usr/bin/update
sleep 2 & loading $! & chmod +x /usr/bin/add-host
sleep 2 & loading $! & chmod +x /usr/bin/certv2ray
sleep 2 & loading $! & chmod +x /usr/bin/menu-set
sleep 2 & loading $! & chmod +x /usr/bin/about
sleep 2 & loading $! & chmod +x /usr/bin/add4
sleep 2 & loading $! & chmod +x /usr/bin/menu-backup
sleep 2 & loading $! & chmod +x /usr/bin/trial
sleep 2 & loading $! & chmod +x /usr/bin/usernew
sleep 2 & loading $! & chmod +x /usr/bin/add-tr
sleep 2 & loading $! & chmod +x /usr/bin/del-tr
sleep 2 & loading $! & chmod +x /usr/bin/cek-tr
sleep 2 & loading $! & chmod +x /usr/bin/trialtrojan
sleep 2 & loading $! & chmod +x /usr/bin/renew-tr
sleep 2 & loading $! & chmod +x /usr/bin/add-ws
sleep 2 & loading $! & chmod +x /usr/bin/del-ws
sleep 2 & loading $! & chmod +x /usr/bin/cek-ws
sleep 2 & loading $! & chmod +x /usr/bin/renew-ws
sleep 2 & loading $! & chmod +x /usr/bin/trialvmess
sleep 2 & loading $! & chmod +x /usr/bin/add-vless
sleep 2 & loading $! & chmod +x /usr/bin/del-vless
sleep 2 & loading $! & chmod +x /usr/bin/cek-vless
sleep 2 & loading $! & chmod +x /usr/bin/renew-vless
sleep 2 & loading $! & chmod +x /usr/bin/trialvless
sleep 2 & loading $! & chmod +x /usr/bin/menu-trial
sleep 2 & loading $! & chmod +x /usr/bin/bot2
sleep 2 & loading $! & chmod +x /usr/bin/add-bot
sleep 2 & loading $! & chmod +x /usr/bin/add-bot-bersama
sleep 2 & loading $! & chmod +x /usr/bin/bot-bansos
sleep 2 & loading $! & chmod +x /usr/bin/stop-bot
sleep 2 & loading $! & chmod +x /usr/bin/stop-bot2
sleep 2 & loading $! & chmod +x /usr/bin/restart-bot
sleep 2 & loading $! & chmod +x /usr/bin/restart-bot2
sleep 2 & loading $! & chmod +x /usr/bin/hapus-bot
sleep 2 & loading $! & chmod +x /usr/bin/del-bot2
sleep 2 & loading $! & chmod +x /usr/bin/update
sleep 2 & loading $! & sed -i 's/\r$//' /usr/bin/menu-bot
sleep 2 & loading $! & chmod +x /usr/bin/menu-bot

echo

# Loading saat sleep
sleep 2 & loading $!

clear


sleep 0.6 & loading $!
clear
cd
rm -f update.sh
clear
echo -e "Downloaded successfully!!!"
read -n 1 -s -r -p "Press [ Enter ] to back on menu"
menu
