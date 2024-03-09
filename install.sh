passwd
sudo steamos-readonly disable

#Pacman + Paru + Chaotic-AUR
sudo rm -fr /etc/pacman.d/gnupg
sudo pacman-key --init
sudo pacman-key --populate
sudo pacman -S archlinux-keyring base-devel multilib-devel openssl
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
echo '[chaotic-aur]' | sudo tee -a /etc/pacman.conf
echo 'Include = /etc/pacman.d/chaotic-mirrorlist' | sudo tee -a /etc/pacman.conf

#Packages
paru -Sy proton-ge-custom-bin
flatpak install com.brave.Browser
flatpak install org.qbittorrent.qBittorrent
flatpak install io.github.kotatogram
flatpak install dev.vencord.Vesktop
flatpak install com.github.Matoking.protontricks
flatpak install com.github.tchx84.Flatseal
flatpak install org.videolan.VLC
flatpak install com.moonlight_stream.Moonlight
curl -L https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/install_release.sh | sh
curl -O https://raw.githubusercontent.com/CryoByte33/steam-deck-utilities/main/InstallCryoUtilities.desktop
mv "InstallCryoUtilities.desktop" "$HOME"/Desktop
chmod +x "$HOME"/Desktop/InstallCryoUtilities.desktop