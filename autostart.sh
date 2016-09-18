create_autostart_folder(){

    echo "Setting up autostart settings"
    echo "============================="
    echo ""

    if [[ ! -d ~/.config/autostart ]]; then
    	mkdir ~/.config/autostart
    else
        rm ~/.config/autostart/*
    fi

}


add_autostart_confs(){

    apps="tlp redshift-gtk indicator-brightness dropbox variety"
    for i in $apps
    do
        echo "Autostarting $i"
        echo ""

        autoStartApp="~/.config/autostart/$i.desktop"
        if [[ ! -e ~/.config/autostart/${i}.desktop ]]; then
            cp confs/autostart/${i}.desktop ~/.config/autostart/
        fi
    done
}


# not need to init here, not enough going on
create_autostart_folder
add_autostart_confs
