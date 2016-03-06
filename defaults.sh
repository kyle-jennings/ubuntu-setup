
echo "Browser: chrome"
echo "==============="
echo " "
xdg-settings set default-web-browser google-chrome.desktop

# comics

echo "Comic Books"
echo "==========="
echo ""
set_comic_app(){
    sed -i '/cbr/d' /usr/share/gnome/applications/defaults.list
    sed -i '/cbt/d' /usr/share/gnome/applications/defaults.list
    sed -i '/cbz/d' /usr/share/gnome/applications/defaults.list
}