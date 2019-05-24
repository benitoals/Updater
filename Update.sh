#!/bin/bash
# Date: 2015-03-05
# To update GIT
echo 
echo -e "\e[01;31mUpdading git based applications...\e[00m"
cd c:\app
f="C:\Windows\Temp\update.tmp"
ls -d */ > "$f"
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
cd C:\\Users\\user\\OneDrive\\Documentos\\WindowsPowerShell\\Modules
g="C:\\Windows\\Temp\\update2.tmp"
ls -d */ > "$g"
while read l; do
        cd "C:\\Users\\user\\OneDrive\\Documentos\\WindowsPowerShell\\Modules\\$l";
        if [[ $(ls -1a | grep ".git" | wc -l) -gt 0 ]]; then
                echo -e "-------\nUpdating $l module."
                git pull;
        fi;
done < "$g"
rm "$g"

echo 
echo -e "\e[01;31mUpdading composer web-based applications...\e[00m"
cd C:\\wamp64\\www
f="C:\Windows\Temp\update3.tmp"
ls -d */ > "$h"
while read l; do
        cd "C:\\wamp64\\www\\$l";

        if [[ $(ls -1a | grep "composer.json" | wc -l) -gt 0 ]]; then
                echo -e "-------\nUpdating $l folder."
                composer update;
        fi;
done < "$f"
rm "$f"