# Guild Wars 2 for Linux

This is a easy installer for GW2 on Linux.

[![https://imgur.com/hdn019q.png](https://imgur.com/hdn019q.png)](https://imgur.com/hdn019q.png)


## How to use :

#### Just download :

Guild Wars 2 1.7 Intel-AMD.tar.gz : For Intel GPU or AMD GPU

Guild Wars 2 1.7 Nvidia.tar.gz : For Nvidia GPU

#### Extract :

Right clic extract here or

```tar -xvf Guild Wars 2 1.7 Nvidia.tar.gz```

#### Install :

Just double clic on install select your folder and install it.

#### Run :

Just double clic on desktop shortcut in menu or desktop.

## Linux Compatibility :

- Debian 8.x / 9.x
- Ubuntu 18.04
- Manjaro 18.0.4
- Fedora 29 / 30

## Installer made by :

liberodark, v1cont, Хрюнделёк

## Wine modified made by :

ArmoredVehicle.2849
https://en-forum.guildwars2.com/discussion/31192/playing-guild-wars-2-on-linux-performance-optimizations-and-more

## Troubleshouting :

Alternative solution - If the above doesn't work, don't revert those changes, instead try this:

Edit '/etc/systemd/system.conf' and '/etc/systemd/user.conf' :

Ubuntu
```
sudo sed -i "s@#DefaultLimitNOFILE=@#DefaultLimitNOFILE=1048576@g" /etc/systemd/system.conf
sudo sed -i "s@#DefaultLimitNOFILE=@#DefaultLimitNOFILE=1048576@g" /etc/systemd/user.conf
```

Manjaro
```
sudo sed -i "s@#DefaultLimitNOFILE=1024:524288@DefaultLimitNOFILE=1048576@g" /etc/systemd/system.conf
sudo sed -i "s@#DefaultLimitNOFILE=@DefaultLimitNOFILE=1048576@g" /etc/systemd/user.conf
```

Manually
```
sudo nano /etc/systemd/system.conf
sudo nano /etc/systemd/user.conf
```

Find the line named #DefaultLimitNOFILE= and change it to DefaultLimitNOFILE=1048576 (Both files have this entry).
Reboot.

For check if that work run : (need to see '1048576')

```
ulimit -Hn 
ulimit -Sn
```
