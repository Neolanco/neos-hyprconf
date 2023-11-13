./setup-yay.sh
yay
yay -S swaylock-effects swaync hyprpicker swayosd-git
sudo pacman -S --needed --noconfirm awesome-terminal-fonts ttf-font-awesom
sudo pacman -S --needed --noconfirm docker docker-compose
#sudo groupadd docker
#sudo usermod -aG docker leon
#newgrp docker
sudo pacman -S --needed --noconfirm xorg-xev blueman brightnesctl pavucontrol waybar gnome-terminal bluez swaync grim hyprpaper pamixer
sudo pacman -S --needed --noconfirm hyprland xdg-desktop-portal-gtk xdg-desktop-portal-hyprland
sudo pacman -S --needed --noconfirm flatpak
flatpak install flathub org.mozilla.firefox
flatpak install flathub com.google.Chrome
flatpak install flathub io.github.realmazharhussain.GdmSettings
flatpak install flathub io.missioncenter.MissionCenter

sudo systemctl enable bluez
sudo systemctl enable docker
sudo systemctl start bluez
sudo systemctl start docker
flatpak install flathub org.telegram.desktop
flatpak install flathub com.discordapp.Discord
