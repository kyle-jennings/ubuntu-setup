
theme_conf(){
    # get themes
    echo "Downloading Flatabulous theme"
    echo "============================="
    echo " "


    if [[ ! -d ~/.themes ]]; then
    	mkdir ~/.themes
    fi

    #unzip theme to them folder
    if [[ ! -e ~/.themes/Flatabulous-master ]]; then
    	unzip -qq ~/Downloads/flattabulous.zip -d ~/.themes
    fi

    # I dont like rounded corners
    echo "Death to border-radius"
    echo " "
    sed -i 's/border-radius: 6px 6px 0 0;/border-radius:0;/g' ~/.themes/Flatabulous-master/gtk-3.0/apps/unity.css

    # set themes and icons
    echo "Prettying up your desktop - Flatabulous theme and Ultra Flat Icons"
    echo "=================================================================="
    echo " "

    if [[ -e ~/Downloads/flattabulous.zip ]]; then
        gsettings set org.gnome.desktop.interface gtk-theme "Flatabulous-master"
        gsettings set org.gnome.desktop.wm.preferences theme "Flatabulous-master"
    fi
    gsettings set org.gnome.desktop.interface icon-theme "Ultra-Flat"

}


touchegg_conf(){
    # touchegg stuff
    echo "Configuring touchegg"
    echo "===================="
    echo " "


    if [[ ! -d ~/.config/touchegg ]]; then
    	mkdir ~/.config/touchegg
    	sudo chmod -R 777 ~/.config/touchegg
    fi
    cat confs/touchegg.conf > ~/.config/touchegg/touchegg.conf

}

desktop_conf(){

    # set screenoff time - 20 minutes
    echo "Setting screenoff time to 20 minutes"
    echo "===================================="
    echo " "

    gsettings set org.gnome.desktop.session idle-delay 1200

    # set workspaces
    echo "Setting up 3x2 workspace"
    echo "========================"
    echo " "


    gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 3
    gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 2

}

lense_conf(){

    # turn off search
    echo "Disabling spamming lense scopes"
    echo "==============================="
    echo " "

    gsettings set com.canonical.Unity.Lenses disabled-scopes "['more_suggestions-amazon.scope', 'more_suggestions-u1ms.scope', 'more_suggestions-populartracks.scope', 'music-musicstore.scope', 'more_suggestions-ebay.scope', 'more_suggestions-ubuntushop.scope','more_suggestions-skimlinks.scope', 'reference-zotero.scope', 'reference.scope']"
}

sublime_conf(){

    # configure sublime
    echo "Configuring Sublime Text preferences and packages"
    echo "================================================="
    echo " "


    if [[ -d ~/.config/sublime-text-3 ]]; then
    	cp -f confs/sublime-settings/* ~/.config/sublime-text-3/Packages/User
        wget -q -O  ~/.config/sublime-text-3/Installed\ Packages/Package\ Control.sublime-package https://packagecontrol.io/Package%20Control.sublime-package
    fi
}

tap_to_click(){

    # turn off tap to click
    echo "Disabling tap to click on touchpad"
    echo "=================================="
    echo " "

    testVar="$(gsettings list-recursively | grep -m 1 tap-to-click)"
    schema=$(echo "$testVar" | sed 's/tap-to-click.*//')
    gsettings set $schema tap-to-click false
}

launcher_conf(){

    # turn off tap to click
    echo "Unlock default launcher apps"
    echo "============================="
    echo " "

    gsettings set com.canonical.Unity.Launcher favorites "['application://ubuntu-software-center.desktop', 'application://unity-control-center.desktop', 'unity://running-apps', 'application://google-chrome.desktop', 'application://terminator.desktop', 'application://sublime-text.desktop', 'unity://expo-icon', 'unity://devices']"
}

unity_conf(){

    # turn off tap to click
    echo "Shrink unity bar"
    echo "================"
    echo " "
    dconf write /org/compiz/profiles/unity/plugins/unityshell/icon-size 32


    # auto hide the unity bar
    echo "Auto Hiding the unity bar"
    echo "=========================="
    echo " "

    gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-hide-mode 1


    # set dash lense to full screen
    echo "Setting Dash lense to full screen"
    echo "================================="
    echo " "

    gsettings set com.canonical.Unity form-factor 'Netbook'


    #  set nemo as default
    #echo "Setting Nemo as default filemanager"
    #echo "==================================="
    #echo " "

    echo "Turning off desktop icons"
    echo "=========================="
    echo " "
    #nemo seems broken on 15.10, so we are only turning off desktop icons
    gsettings set org.gnome.desktop.background show-desktop-icons false
    #xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
    #gsettings set org.nemo.desktop show-desktop-icons true

    # undo nemo nonsense
    #gsettings set org.nemo.desktop show-desktop-icons false
    #gsettings set org.gnome.desktop.background show-desktop-icons true
    #xdg-mime default nautilus.desktop inode/directory application/x-gnome-saved-search

}

git_conf(){
    # setup git
    echo "Settings up Git"
    echo "==============="
    echo " "

    git config --global core.editor "vim"

}

variety_conf(){

    # setup variety
    echo "Settings up Variety"
    echo "==================="
    echo " "


    if [[ -d ~/.config/variety ]]; then
        cp -f confs/variety.conf ~/.config/variety/
    fi
}

redshift_conf(){

    # setup redshift
    echo "Settings up redshift"
    echo "==================="
    echo " "


    if [[ ! -e ~/.config/redshift.conf ]]; then
        cp -f confs/redshift.conf ~/.config/
    fi
}



# replace scudcloud icon
#if [[ !-e ~/Downloads/slack-icon.png ]]; then
#    wget -q -O ~/Downloads/slack-icon.png https://d13yacurqjgara.cloudfront.net/users/48487/screenshots/1400899/attachments/203337/Slack-flat.png
#fi
teminator_conf(){

    echo "Settings up terminator"
    echo "======================"
    echo " "
    if [[ ! -e ~/.config/terminator/config ]]; then
        cp confs/terminator/config ~/.config/terminator/
    fi
}


setup_mysql(){

    echo "Set mysql user and root"
    echo "======================="
    echo ""

    echo mysql-server mysql-server/root_password password "root" | debconf-set-selections
    echo mysql-server mysql-server/root_password_again password "root" | debconf-set-selections
}



init(){

    echo "======================"
    echo "| Configuring Ubuntu |"
    echo "======================"

    theme_conf
    touchegg_conf
    desktop_conf
    lense_conf
    sublime_conf
    tap_to_click
    launcher_conf
    unity_conf
    git_conf
    variety_conf
    redshift_conf
    teminator_conf
    setup_ssh_key
    #setup_mysql
}

# start your engines
init
