# Guild Wars 2 for Linux

This is an easy installer for GW2 on Linux.

[![https://imgur.com/hdn019q.png](https://imgur.com/hdn019q.png)](https://imgur.com/hdn019q.png)


## How to use :

#### Just download :

Guild Wars 2 1.8.2 [Download](https://github.com/liberodark/GW2-Wine/releases/download/1.8.2/Guild.Wars.2.1.8.2.tar.gz) : For Nvidia / AMD / Intel GPU

#### Extract :

Right click extract here or

```
tar -xvf Guild.Wars.2.1.8.2.tar.gz
```

#### Install :

Just double click on install select your folder and install it.

PS : Progress bar does not work now but when the install is finished you will receive an Install Complete message

#### Run :

Just double click on desktop shortcut in menu or desktop.

## Linux Compatibility :

- Debian 8.x / 9.x
- Ubuntu 18.04
- Manjaro 18.0.4
- Fedora 29 / 30
- Centos 7.x

## Installer made by :

liberodark, v1cont, Хрюнделёк

## Wine modified made by :

ArmoredVehicle.2849

https://en-forum.guildwars2.com/discussion/31192/playing-guild-wars-2-on-linux-performance-optimizations-and-more

## Troubleshouting :

Alternative solution - If the above doesn't work, don't revert those changes, instead try this:

Edit '/etc/systemd/system.conf' and '/etc/systemd/user.conf' :

Ubuntu 18.04 / Centos 7
```
sudo sed -i "s@#DefaultLimitNOFILE=@DefaultLimitNOFILE=1048576@g" /etc/systemd/system.conf
sudo sed -i "s@#DefaultLimitNOFILE=@DefaultLimitNOFILE=1048576@g" /etc/systemd/user.conf
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
