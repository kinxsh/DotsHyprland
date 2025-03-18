yay -S waypaper --noconfirm --needed
curl https://raw.githubusercontent.com/kinxsh/DotsHyprland/refs/heads/main/config.ini -o ./config.ini.new
rm -rf ~/.config/waypaper
mkdir ~/.config/waypaper
sudo mv ./config.ini.new ~/.config/waypaper/config.ini
echo windowrule=float,waypaper > ~/.config/hypr/custom/rules.conf.new
mv ~/.config/hypr/custom/rules.conf.new ~/.config/hypr/custom/rules.conf
echo bind = Ctrl+Alt, T, exec, waypaper > ~/.config/hypr/custom/keybinds.conf.new
mv ~/.config/hypr/custom/keybinds.conf.new ~/.config/hypr/custom/keybinds.conf

