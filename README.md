# StrawHatLinux
My SteamOS configuration
### Install (need to update)
```
passwd
sudo steamos-readonly disable

chmod -R 777 StrawHatLinux/install.sh
StrawHatLinux/install.sh
```

### Update (need to update)
```
sudo steamos-readonly disable

chmod -R 777 StrawHatLinux/update.sh
StrawHatLinux/update.sh
```

### Launch Options for Steam
Default
```
gamemoderun mangohud --dlsym %command%
```
online-fix.me
```
gamemoderun mangohud --dlsym WINEDLLOVERRIDES="OnlineFix64=n;SteamOverlay64=n;winmm=n,b;dnet=n;steam_api64=n" %command%
```
