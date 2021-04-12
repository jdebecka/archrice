# MESSAGE FROM JULIA, KAMIL I LUKASZ

## WE REALLY WOULD LIKE TO SEE YOU THIS THURHDAY AT JULIA'S APARMENT. 

### PLEASE STOP IGNORING US!

#### WE ARE YOUR FRIENDS AND WE MISS YOU!

And a bunch of useful scripts.

## Usage

```
# go to home dir
cd ~

# clone repo to .archrice
git clone https://github.com/jannec22/archrice.git .archrice

cd .archrice

# install
./install.sh destination/path[$HOME] archrice/path[pwd]

# this will move all previous configs to dest/old_config
# and link up .archrice files to the dest folder

# to uninstall

./uninstall.sh installation/path[$HOME] archrice/path[pwd]
```

`.local/src` contains sub-modules with useful programs for which these dotfiles apply:

  - dwm - suckless window manager
  - st - suckless terminal
  - slock - screen locker
  - dwmblocks - statusbar for dwm
  - dmenu - suskless dmenu

to install these programs run `make clean install` in the root dir for each of them.
slock is installed globally so it needs `sudo make install`.

to uninstall use `make uninstall`

