#!/bin/bash
RED="\e[1;31m"
GREEN="\e[1;32m"
ENDCOLOR="\e[0m"


echo  -e " _     _            _               _    "
echo  -e "| |   (_)_ __   ___| |__   ___  ___| | __"
echo  -e "| |   | | '_ \ / __| '_ \ / _ \/ __| |/ /"
echo  -e "| |___| | | | | (__| | | |  __/ (__|   < "
echo  -e "|_____|_|_| |_|\___|_| |_|\___|\___|_|\_\\\\"
echo
echo -e "${RED}[+] Running SUID commands...${ENDCOLOR}"
echo 
echo -e "[*] Running this command : ${GREEN}find / -perm -4000 2>/dev/null${ENDCOLOR}"
echo 
find / -perm -4000 2>/dev/null | while read line; do echo -e "$line"; done
echo
echo "========================================================================"
echo

echo -e " [*] Running this command : ${GREEN}find / -perm -u=s -type f 2>/dev/null${ENDCOLOR}"
echo 
find / -perm -u=s -type f 2>/dev/null |  while read line; do echo -e "$line"; done
echo
echo "========================================================================"
echo 
echo -e " [*] Running this command : ${GREEN}find /  -perm -4000 2>/dev/null${ENDCOLOR}"
echo 
find /  -perm -4000 2>/dev/null | while read line; do echo -e "$line"; done
echo 
echo "========================================================================"
echo -e " [*] Running this command : ${GREEN}getcap -r / 2>/dev/null${ENDCOLOR} "
echo 
getcap -r / 2>/dev/null | while read line; do echo -e "$line"; done
echo 
echo "========================================================================"
echo 
echo -e "${RED}[+] Checking for writable files...${ENDCOLOR}"

passwd=`ls -la /etc/passwd`
shadow=`ls -la /etc/shadow`
sudoers=`ls -la /etc/sudoers`
for i in "$passwd" "$shadow" "$sudoers"
do
	echo -e "$i"
done 
echo
echo "========================================================================"
echo
echo -e "${RED}[+] Checking system version...${ENDCOLOR}"
echo 
echo -e "[*] Running this command : ${GREEN}cat /etc/issue${ENDCOLOR}"
echo
cat /etc/issue 2> /dev/null
echo 
echo -e "[*] Running this command : ${GREEN}cat /etc/*-release${ENDCOLOR}"
echo
cat /etc/*-release 2> /dev/null
echo 
echo -e "[*] Running this command : ${GREEN}cat /etc/lsb-release${ENDCOLOR}"
echo
cat /etc/lsb-release 2> /dev/null
echo 
echo -e "[*] Running this command : ${GREEN}cat /etc/redhat-release${ENDCOLOR}"
echo
cat /etc/redhat-release 2> /dev/null
echo 
echo "========================================================================"
echo 
echo -e "${RED}[+] Checking kernal version...${ENDCOLOR}"
echo 
echo -e "[*]Running this command : ${GREEN}cat /proc/version${ENDCOLOR}"
echo
cat /proc/version 2> /dev/null
echo 
echo -e "[*] Running this command : ${GREEN}uname -a${ENDCOLOR}"
echo
uname -a 2> /dev/null
echo
echo -e "[*]Running this command : ${GREEN}uname -mrs${ENDCOLOR}"
echo
uname -mrs 2> /dev/null
echo
echo -e "[*] Running this command : ${GREEN}ls /boot | grep vmlinuz${ENDCOLOR}"
echo
ls /boot | grep vmlinuz 2> /dev/null
echo
echo "========================================================================"
echo
echo -e "${RED}[+] Checking for cronatabs... (If nothing found run pspy)${ENDCOLOR}"
echo
echo -e "[*] Running this command : ${GREEN}crontab -l${ENDCOLOR}"
echo
crontab -l 2> /dev/null
echo
echo -e "[*] Running this command : ${GREEN}ls -al /etc/ | grep cron${ENDCOLOR}"
echo
ls -al /etc/ | grep cron 2> /dev/null
echo
echo -e "[*] Running this command : ${GREEN}ls -al /etc/ | grep cron${ENDCOLOR}"
echo
ls -al /etc/ | grep cron 2> /dev/null
echo
echo -e "[*] Running this command : ${GREEN}cat /etc/crontab${ENDCOLOR}"
echo
cat /etc/crontab 2> /dev/null
echo
echo -e "[*] Running this command : ${GREEN}cat /etc/anacrontab${ENDCOLOR}"
echo
cat /etc/anacrontab 2> /dev/null
echo
echo "====================== END ======================="



































