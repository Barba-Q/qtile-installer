# qtile-installer (for opensuse)
Installs the tiling window manager Qtile on opensuse. 
Delivers a pre defined configuration to help newbies with their first steps using TWM's

What it does:
  - Will install qtile if not already done so
  - Will install nm-applet for network notification and set up
  - Will install compton for some decent blinky blinky
  - Will install awesome fonts for some icons to display in the bottom panel
  - Will backup existing config.py (nothing else!!)
  - Will "install" a config.py file
  -- A corresponding autostart.sh
  -- A corresponding usersetting.py file
  
Usage:
  - Download files 
  - Execute Qtile_installer.sh
  - Provide root password (for software installation)
  - wait til it's done
  - log out 
  - log back in with qtile as desktop environment
  - have fun

Configuration:
  - As every TWM qtile is made for custom configuration. This here shall give a kick start for newcomers. If you wanna change initial stuff like colors, font sizes or else look first in the usersetting.py file an fiddle with the variable as you please. Make yourself comfortable and dive deeper into the 'real' configuration if you want to.

Whats next:
I'm working on a graphical interface to set some variables like colors, sizes, icons, what to autostart, icons, and so on. The installer hower does what it should do. If theres more to add, like bringing it do other distributions, feel free to make it happen. 


Qtile quick and dirty:

Mod Key + 1			    = Switch to first group
Mod Key + 2			    = Switch to second group
... and so on


Mod Key + Shift + 1	= Move active window to group 1
Mod Key + Shift + 2	= Move active window to group 2
... and so on


Mod Key + r			    = command prompt (spawn) -> enter a programname and it will open up (e.g. firefox)
Mod Key + Return	  = will open a Terminal
Mod Key + TAB		    = switch between layout modes (Full Screen or columns)
Mod Key + Spacebar  = switch between Windows (usefull when in fullscreen layout)



That should kickstart your qtile experience. 
Have Fun'''


Much love


powered by knietief.com
