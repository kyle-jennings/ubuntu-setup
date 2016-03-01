# get keys
echo "Getting Repo Keys"
echo "================="
echo " "

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E

# add repositories
echo "Adding repos"
echo "============"
echo " "

# make this a loop
sudo add-apt-repository -y ppa:peterlevi/ppa
sudo add-apt-repository -y ppa:linrunner/tlp
sudo add-apt-repository -y ppa:noobslab/icons
sudo add-apt-repository -y ppa:indicator-brightness/ppa
sudo add-apt-repository -y ppa:atareao/atareao
sudo add-apt-repository -y ppa:atareao/atareao
sudo add-apt-repository -y ppa:gnome-terminator
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo add-apt-repository -y "deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main"
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'


# update apt
echo "Updating apt-get"
echo "================"
echo " "

sudo apt-get update

# install packages
echo "Installing packages"
echo "==================="
echo " "

sudo apt-get install -y build-essential libxcb-randr0-dev tlp tlp-rdw smartmontools ethtool ultra-flat-icons python-wnck indicator-brightness calendar-indicator my-weather-indicator touchegg terminator sublime-text-installer redshift gtk-redshift unity-tweak-tool gnome-tweak-tool vim git dropbox dconf-tools google-chrome-stable variety