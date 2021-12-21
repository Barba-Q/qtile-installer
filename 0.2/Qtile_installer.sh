#!/bin/bash
apwd="$(pwd | sed 's/ /\ /g')"

tar -zxvf "$apwd"/qtileinstaller.tar.gz

if which qtile >/dev/null; then
	echo "Qtile already installed, saving your config.py"
	cp ~/.config/qtile/config.py ~/.config/qtile/config.py.installer.bak
	echo "config saved as config.py.installer.bak"
	
    xterm -e	"sudo zypper in -l -y fontawesome-fonts NetworkManager-applet compton;
    			sudo mv '$apwd'/files/config.py ~/.config/qtile/;
            	sudo mv '$apwd'/files/autostart.sh ~/.config/qtile/;
            	sudo mv '$apwd'/files/usersettings.py ~/.config/qtile;
            	sudo mv '$apwd'/files/qtile.png ~/.config/qtile;
            	read -s -n1 -p 'All done. Press any key to close...'"
else   
    echo "Qtile not found. I'll fix that"
    xterm -e   "sudo zypper in -l -y qtile fontawesome-fonts NetworkManager-applet compton;
    			sudo mv '$apwd'/files/config.py ~/.config/qtile/;
            	sudo mv '$apwd'/files/autostart.sh ~/.config/qtile/;
            	sudo mv '$apwd'/files/usersettings.py ~/.config/qtile;
            	sudo mv '$apwd'/files/qtile.png ~/.config/qtile;
            	read -s -n1 -p 'All done. Press any key to close...'"
fi
