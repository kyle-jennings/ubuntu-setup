mkdir ~/.config/autostart
rm ~/.config/autostart/*

touch ~/.config/autostart/tlp.desktop && echo 'tlp start' >> ~/.config/autostart/tlp.desktop 
touch ~/.config/autostart/touchegg.desktop && echo 'touchegg &' >> ~/.config/autostart/touchegg.desktop
touch ~/.config/autostart/redshift.desktop && echo 'redshift' >> ~/.config/autostart/redshift.desktop