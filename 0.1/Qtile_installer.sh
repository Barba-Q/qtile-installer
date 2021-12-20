#!/bin/bash
apwd="$(pwd | sed 's/ /\ /g')"

tar -zxvf "$apwd"/qtileinstaller.tar.gz

if which qtile >/dev/null; then
	echo "Qtile already installed, saving your config.py"
	cp ~/.config/qtile/config.py ~/.config/qtile/config.py.installer.bak
	echo "config saved as config.py.installer.bak"
	
    xterm -e	"sudo zypper in -l -y fontawesome-fonts nm-applet compton;
    			sudo cp '$apwd'/files/config.py ~/.config/qtile/;
            	sudo cp '$apwd'/files/autostart.sh ~/.config/qtile/;
            	sudo cp '$apwd'/files/usersettings.py ~/.config/qtile;
            	sudo cp '$apwd'/files/qtile.png ~/.config/qtile;            	
            	sudo rm '$apwd'/config.py;
            	sudo rm '$apwd'/autostart.sh;
            	sudo rm '$apwd'/usersettings.py
            	sudo rm '$apwd'/files/qtile.png;            	
            	read -s -n1 -p 'All done. Press any key to close...'"
else   
    echo "Qtile not found. I'll fix that"
    xterm -e   "sudo zypper in -l -y qtile fontawesome-fonts nm-applet compton;
    			sudo cp '$apwd'/files/config.py ~/.config/qtile/;
            	sudo cp '$apwd'/files/autostart.sh ~/.config/qtile/;
            	sudo cp '$apwd'/files/usersettings.py ~/.config/qtile;
            	sudo cp '$apwd'/files/qtile.png ~/.config/qtile;
            	sudo rm '$apwd'/config.py;
            	sudo rm '$apwd'/autostart.sh;
            	sudo rm '$apwd'/usersettings.py
            	sudo rm '$apwd'/files/qtile.png; 
            	read -s -n1 -p 'All done. Press any key to close...'"
fi
