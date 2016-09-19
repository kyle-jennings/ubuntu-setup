Ubuntu Desktop Starter Pack
============================

Here is my list of essential apps and configs use for every fresh install of ubuntu.

## What is does

1. Installs the packages listed below
2. Pretties up your desktop by:
    1. Uses the Flatabulous theme
    2. Removes border radius from theme windows
    3. Changes icon set to Ultra Flat
    4. Sets workspaces to 3x2
    5. Shrinks unity bar
    6. Sets Unity dash lense to fullscreen
    7. Turns default desktop icons off (ie. trash)
3. Adds some default configs to the installed apps
4. Removes default apps from unity bar and replaces with some good, common ones (ie. chrome, sublime, ect ect)
5. Disables touchpad's tap-to-click
6. Disables all 3rd party lense scopes
7. Sets up SSH key and adds it to your Github account
8. Autostarts: tlp, redshift-gtk, indicator-brightness, dropbox, variety


## Packages

### Package dependencies
* build-essential
* libxcb-randr0-dev
* ethtool
* python-wnck
* libgcrypt11-dev
* geoclue-hostip
* tasksel
* zlib1g-dev

### utilities
* tlp-rdw
* tlp
* smartmontools
* [redshift](http://jonls.dk/redshift/) - F.lux for Ubuntu
* gtk-redshift - redshift GUI
* [variety](http://peterlevi.com/variety/) - Changes wallpaper automatically from a folder or various internet resources

### tools
* conf-tools
* gnome-tweak-tool - Tweak desktop settings
* unity-tweak-tool - Tweak desktop settings
* filezilla
* google-chrome-stable
* unrar

### productivity
* [sublime-text-installer](https://www.sublimetext.com/)
* vim
* git
* [scudcloud](https://github.com/raelgc/scudcloud) - A great slack client for Ubuntu
* [vagrant](https://www.vagrantup.com/)
* [virtualbox](https://www.virtualbox.org/wiki/Downloads)
* [terminator](https://launchpad.net/terminator) - Great
* nodejs
* composer
* npm

### indicators
* my-weather-indicator
* [indicator-brightness](https://launchpad.net/indicator-brightness) - changes screen brightness from panel bar

### entertainment
* [vlc](http://www.videolan.org/vlc/index.html)
* [spotify-client](https://www.spotify.com/us/)
* ubuntu-restricted-extras - (mp3 playback and decoding, support for various formats, fonts, java, flash plugin, lame, dvd playback)
* [steam](store.steampowered.com)
* [comix](http://comix.sourceforge.net/) - Comic book reader


### Desktop Appearance
* Flatabulous Theme - Pretty, minimal, dark theme
* Ultraflat Icons - Slick, flat icons which compliment Flatabulous



#### ToDo:

* make this a one-click executable
* add custom conf files before installing packages (not necessarily needed at this time)
    * *apt-get install -y -o Dpkg::Options::=--force-confdef*
* add interactive prompts to setup dropbox, chrome(zoom levels ect), spotify accounts
* add interactive prompts to pull personal configs for things like atom, bim, sublime, ect, from github
    * maybe use yaml file to determine which conf goes where
* nemo
* xswipe
* move unity bar to bottom of screen
* turn broadcast off in terminator
* add a spiffy animation
* install nemo filemanager
