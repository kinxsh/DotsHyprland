git checkout -f
chmod +x ./cleanpatcher.sh
yay -S waypaper --noconfirm --needed
mkdir ~/.config/waypaper -p
cp ./config.ini ~/.config/waypaper/config.ini.old
mv ~/.config/waypaper/config.ini.old ~/.config/waypaper/config.ini $1
echo windowrule=float,waypaper > ~/.config/hypr/custom/rules.conf.old
mv ~/.config/hypr/custom/rules.conf.old ~/.config/hypr/custom/rules.conf $1
echo bind = Super, grave, exec, waypaper > ~/.config/hypr/custom/keybinds.conf.old
mv ~/.config/hypr/custom/keybinds.conf.old ~/.config/hypr/custom/keybinds.conf $1
cp ./user_options.js ~/.config/ags/user_options.js.old
mv ~/.config/ags/user_options.js.old ~/.config/ags/user_options.js $1
