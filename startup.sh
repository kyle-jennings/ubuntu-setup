echo "Setting up autostart settings"
echo "============================="
echo " "

if [[ ! -d ~/.config/autostart ]]; then
	mkdir ~/.config/autostart
fi

rm ~/.config/autostart/*

echo "TLP - power stuff"
echo " "

tlpStart="~/.config/autostart/tlp.desktop"
if [[ ! -e ~/.config/autostart/tlp.desktop ]]; then
	cp confs/autostart/tlp.desktop ~/.config/autostart/
fi

echo "Redshift"
echo " "

redshiftStart="~/.config/autostart/redshift-gtk.desktop"
if [[ ! -e $redshiftStart ]]; then
	cp confs/autostart/redshift-gtk.desktop ~/.config/autostart/
fi

echo "Touchegg"
echo " "

toucheggStart="~/.config/autostart/touchegg.desktop"
if [[ ! -e ~/.config/autostart/touchegg.desktop ]]; then
	cp confs/autostart/touchegg.desktop ~/.config/autostart/
fi

echo "Brightness Indicator"
echo " "

brightnessStart="~/.config/autostart/indicator-brightness.desktop"
if [[ ! -e $brightnessStart ]]; then
	cp confs/autostart/indicator-brightness.desktop ~/.config/autostart/
fi