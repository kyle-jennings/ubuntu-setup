# get themes
wget -q -O ~/Downloads/flattabulous.zip https://github.com/anmoljagetia/Flatabulous/archive/master.zip
mkdir ~/.themes
unzip -qq ~/Downloads/flattabulous.zip -d ~/.themes

# set themes and icons
gsettings set org.gnome.desktop.interface gtk-theme "Flatabulous-master"
gsettings set org.gnome.desktop.interface icon-theme "Ultra-Flat"
gsettings set org.gnome.desktop.wm.preferences theme "Flatabulous-master"

#  set nemo as default
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true

# touchegg stuff
touch ~/.config/touchegg/touchegg.conf && cat touchegg.conf >> ~/.config/touchegg/touchegg.conf
mkdir ~/.config/touchegg
sudo chmod -R 777 ~/.config/touchegg

# set screenoff time - 20 minutes
gsettings set org.gnome.desktop.session idle-delay 20

# set workspaces
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 3
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 2

# set dash lense to full screen
gsettings set com.canonical.Unity form-factor 'Netbook'

# auto hide the unity bar
gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-hide-mode 1


# configure sublime
curl -L -o sublime-settings.zip https://www.dropbox.com/sh/37qxxl53a9uxb8t/AACnpdVl2hP6NSq6BhUqtCx2a?dl=1
unzip -qq ~/Downloads/sublime-settings.zip -d ~/.config/sublime-text-3/Packages