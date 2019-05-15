#!/bin/bash
# Date: 2019-05-15
# To update GIT
echo 
echo -e "\e[01;31mUpdading git based applications...\e[00m"
cd c:\app
f="C:\Windows\Temp\update.tmp"
ls -1 > "$f"
while read l; do
        cd "C:\\app\\$l";
        if [[ $(ls -1a | grep ".git" | wc -l) -gt 0 ]]; then
                echo -e "-------\nUpdating $l folder."
                git pull;
        fi;
done < "$f"
rm "$f"

echo 
echo -e "\e[01;31mUpdading powershell modules...\e[00m"
cd C:\\Users\\User\\Path\\Documentos\\WindowsPowerShell\\Modules
g="C:\\Windows\\Temp\\update2.tmp"
ls -1 > "$g"
while read l; do
        cd "C:\\Users\\User\\Path\\Documentos\\WindowsPowerShell\\Modules\\$l";
        if [[ $(ls -1a | grep ".git" | wc -l) -gt 0 ]]; then
                echo -e "-------\nUpdating $l module."
                git pull;
        fi;
done < "$g"
rm "$g"
