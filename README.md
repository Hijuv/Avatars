### Update Blocklist
There is a script in `.local/bin/hostfile` which can be used to update the Blocklist. After the installation of SHARKS or the manual download of this script you just have to type in the following command in your terminal:
```
hostfile
```

### Blocklist Includes

1. **Personal Extras**
2. **Luke Smith's General Junk Blocklist**: [GitHub Link](https://github.com/LukeSmithxyz/etc/blob/master/ips)
3. **4skinSkywalker's Pornblocklist**: [GitHub Link](https://github.com/4skinSkywalker/Anti-Porn-HOSTS-File/blob/master/HOSTS.txt)
4. **dan.me.uk's Tor Exit Node List**: [dan.me.uk Link](https://www.dan.me.uk/torlist/?full)

### Where to Place the Domains

#### Linux:
Place the domains in `/etc/hosts`:
```bash
sudo /etc/hosts
```

#### Windows (with administrator privileges):
Place the domains in `C:\Windows\System32\drivers\etc\hosts`.

##### Android (Developer tools and USB debugging must be turned on):
1. Install `adb`:
   ```
   sudo pacman -S adb
   ```
2. Plug the phone into the laptop.
3. Run the following commands:
   ```
   adb root
   adb remount
   adb push /etc/hosts /system/etc
   ```

##### iPhone (Irreversible):
1. Go to `Settings > Screen Time > Communication Security`.
2. Turn on filters for sensitive content and enter a password blindly.

