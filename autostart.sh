create_autostart_folder(){

    echo "Setting up autostart settings"
    echo "============================="
    echo ""

    if [[ ! -d ~/.config/autostart ]]; then
    	mkdir ~/.config/autostart
    fi

    rm ~/.config/autostart/*
}


autostart_tlp(){

    echo "TLP - power stuff"
    echo ""

    tlpStart="~/.config/autostart/tlp.desktop"
    if [[ ! -e ~/.config/autostart/tlp.desktop ]]; then
    	cp confs/autostart/tlp.desktop ~/.config/autostart/
    fi
}


autostart_redshift(){

    echo "Redshift"
    echo ""

    redshiftStart="~/.config/autostart/redshift-gtk.desktop"
    if [[ ! -e $redshiftStart ]]; then
    	cp confs/autostart/redshift-gtk.desktop ~/.config/autostart/
    fi
}

autostart_touchegg(){
    echo "Touchegg"
    echo ""

    toucheggStart="~/.config/autostart/touchegg.desktop"
    if [[ ! -e ~/.config/autostart/touchegg.desktop ]]; then
    	cp confs/autostart/touchegg.desktop ~/.config/autostart/
    fi

}

autostart_brightness(){

    echo "Brightness Indicator"
    echo ""

    brightnessStart="~/.config/autostart/indicator-brightness.desktop"
    if [[ ! -e $brightnessStart ]]; then
    	cp confs/autostart/indicator-brightness.desktop ~/.config/autostart/
    fi
}

create_autostart_folder
autostart_tlp
autostart_redshift
autostart_touchegg
autostart_brightness