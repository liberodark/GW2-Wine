# GW2-Wine
Wine for GW2 make by ArmoredVehicle.2849

Alternative solution - If the above doesn't work, don't revert those changes, instead try this:

    (with sudo) Open up '/etc/systemd/system.conf' and '/etc/systemd/user.conf' in a text editor.
    Find the line named #DefaultLimitNOFILE= and change it to DefaultLimitNOFILE=1048576 (Both files have this entry).
    Reboot.

To verify if your changes have been applied successfully in terminal run ulimit -Hn and ulimit -Sn if they both print '1048576' then you should be good to go.
