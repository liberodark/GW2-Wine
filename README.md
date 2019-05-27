# Guild Wars 2 for Linux

This is a easy installer for GW2 on Linux.

Screenshot !


## How to use :

#### Just download :

Guild Wars 2 1.7 Intel-AMD.tar.gz : For Intel GPU or AMD GPU

Guild Wars 2 1.7 Nvidia.tar.gz : For Nvidia GPU

#### Extract :

Right clic extract here or

```tar -xvf Guild Wars 2 1.7 Nvidia.tar.gz```

#### Install :

Just double clic on install

## Linux Compatibility :

- Debian 7.x / 8.x / 9.x
- Ubuntu 18.04
- Centos 6.x / 7.x
- Red Hat 6.x / 7.x / 8.x
- Fedora 27 / 29

## Installer made by :

liberodark

## Wine modified made by :

ArmoredVehicle.2849

Wine for GW2 make by ArmoredVehicle.2849 https://en-forum.guildwars2.com/discussion/31192/playing-guild-wars-2-on-linux-performance-optimizations-and-more

Alternative solution - If the above doesn't work, don't revert those changes, instead try this:

(with sudo) Open up '/etc/systemd/system.conf' and '/etc/systemd/user.conf' in a text editor.
    
    sudo nano /etc/systemd/system.conf
    sudo nano /etc/systemd/user.conf
    
 Find the line named #DefaultLimitNOFILE= and change it to DefaultLimitNOFILE=1048576 (Both files have this entry).
 Reboot.

To verify if your changes have been applied successfully in terminal run ulimit -Hn and ulimit -Sn if they both print '1048576' then you should be good to go.
