# add repositories 
sudo add-apt-repository -y ppa:linrunner/tlp  
sudo add-apt-repository -y ppa:noobslab/icons
sudo add-apt-repository -y ppa:indicator-brightness/ppa
sudo add-apt-repository -y ppa:atareao/atareao
sudo add-apt-repository -y ppa:atareao/atareao
sudo add-apt-repository -y ppa:gnome-terminator
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo add-apt-repository -y ppa:wallch/wallch-4.0
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo add-apt-repository -y "deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main"
sudo add-apt-repository -y ppa:noobslab/mint


# update apt
sudo apt-get update

# install packages
sudo apt-get install -y build-essential libxcb-randr0-dev tlp tlp-rdw smartmontools ethtool ultra-flat-icons python-wnck nemo nemo-fileroller indicator-brightness calendar-indicator my-weather-indicator touchegg terminator sublime-text-installer redshift gtk-redshift unity-tweak-tool gnome-tweak-tool vim wallch git dropbox dconf-tools