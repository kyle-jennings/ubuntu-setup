
get_keys(){
    # get keys
    echo "Getting Repo Keys"
    echo "================="
    echo " "

    sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
}



adding_repos(){

    # add repositories
    echo "Adding repos"
    echo "============"
    echo " "

    # make this a loop
    sudo apt-add-repository -y ppa:rael-gc/scudcloud
    sudo add-apt-repository -y ppa:peterlevi/ppa
    sudo add-apt-repository -y ppa:linrunner/tlp
    sudo add-apt-repository -y ppa:noobslab/icons
    sudo add-apt-repository -y ppa:indicator-brightness/ppa
    sudo add-apt-repository -y ppa:atareao/atareao
    sudo add-apt-repository -y ppa:atareao/atareao
    sudo add-apt-repository -y ppa:gnome-terminator
    sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
    sudo add-apt-repository -y "deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main"
    sudo echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
    sudo echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
    sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

    # not really a repo but that'll do. pig
    curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -

}

update_and_upgrade(){

    # update apt
    echo "Updating apt-get"
    echo "================"
    echo " "

    sudo apt-get update -y
    sudo apt-get upgrade -y

    # install packages
    echo "Installing packages"
    echo "==================="
    echo " "

    # removing the following for now
    # dropbox ultra-flat-icons calendar-indicator 

    sudo apt-get install -y build-essential libxcb-randr0-dev tlp tlp-rdw smartmontools ethtool python-wnck indicator-brightness my-weather-indicator touchegg terminator sublime-text-installer redshift gtk-redshift unity-tweak-tool gnome-tweak-tool vim git dconf-tools variety libgcrypt11-dev spotify-client scudcloud vlc ubuntu-restricted-extras filezilla geoclue-hostip virtualbox tasksel zlib1g-dev vagrant google-chrome-stable unrar comix steam nodejs npm composer

}

# clean house
clean_cache(){
    sudo apt-get -y autoclean
    sudo apt-get -y autoremove
}


# install vagrant addons
vagrant_add_ons(){
    echo "Installing Vagrant Addons"
    echo "========================="
    echo " "

    vagrant plugin install vagrant-hostsupdater
    vagrant plugin install vagrant-triggers
}


# get the flatabulous theme
get_flatabulous_theme(){

    # get themes
    if [[ ! -e ~/Downloads/flattabulous.zip ]]; then
        wget -q -O ~/Downloads/flattabulous.zip https://github.com/anmoljagetia/Flatabulous/archive/master.zip
    fi

}

# Set up npm so it can be run as regular user
# This should be in teh setup.sh file but we want to
# turn off the progress bar before installing packages to speed it up
setup_npm(){
    sudo chown -R $(whoami) ~/.npm
    npm set progress=false
}

# install gulp globally
get_gulp(){
    sudo npm install -g gulp
    npm install gulp --save-dev
}


# install bower
get_bower(){
    npm install -g bower
}


# wrapping up all the functions
init(){

    get_keys
    adding_repos
    update_and_upgrade
    clean_cache
    vagrant_add_ons
    get_flatabulous_theme
    setup_npm
    # get_gulp
    # get_bower
}

#start your engines
init
