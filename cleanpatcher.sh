yay -S waypaper --noconfirm --needed
curl https://raw.githubusercontent.com/kinxsh/DotsHyprland/refs/heads/main/switchwall.sh -o ./switchwall.sh.new
chmod +x ./switchwall.sh.new
curl https://raw.githubusercontent.com/kinxsh/DotsHyprland/refs/heads/main/config.ini -o ./config.ini.new
sudo mv ./switchwall.sh.new ~/.config/ags/scripts/color_generation/switchwall.sh
rm -rf ~/.config/waypaper
mkdir ~/.config/waypaper
sudo mv ./config.ini.new ~/.config/waypaper/config.ini
echo windowrule=float,waypaper > ~/.config/hypr/custom/rules.conf.new
mv ~/.config/hypr/custom/rules.conf.new ~/.config/hypr/custom/rules.conf
echo bind = Ctrl+Super, T, exec, waypaper > ~/.config/hypr/custom/keybinds.conf.new
mv ~/.config/hypr/custom/keybinds.conf.new ~/.config/hypr/custom/keybinds.conf

