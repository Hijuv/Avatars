# Commands & Key's

Shark's commands and key's for repetitive tasks. All shortcuts follow the same structure to unify the system.

## **Terminal:**

Commands:

`pkill [software]` - Kill a frozen Page
`clear` - Clear the Terminal
`man [software]` - List Syntax of Software
`chmod +x [directory/of/file]` - File permission to be executable
`mkdir [foldername]` - Creates Folder in cd
`touch [filename]` - Creates File in cd
`pacman -Qm` - List packages installed 
`cp [filename]` - Copy File in cd
`mv [filename]` - Rename File in cd
`rm [filename]` - Remove File 
`rm -r [directory]` - Remove Directory
`lsusb` - List all USB Devices
`pacman -S [package]` - Install from Arch Repository
`pacman -Syyu` - Update System & Packages
`pacman -Qdt` - Autoremove Reqiuerements that are no longer required
`date MMDDhhmmYYYY` - Set Time
`usr/bin/script.sh` - The directory for Scripts
`where [script]` - Find Location of Script
`ps aux | grep [utilitie] | awk '{print $2}'` - Find process PID's of utilitie
`sudo kill -9 [process]` - Kill process of utilitie

Recompile:

`cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }`  - Recompile dwmblocks
`cd local/src/dwm/ && sudo make install && { killall -q dwm; setsid dwm & }` - Recompile dwm

#### youtube-dl:

`yt [URL]` - download youtube videos

#### ffmpeg:

`ffmpeg -i in.mov -vf "transpose=1" out.mov` - Turn Video 90 Clockwise
`ffmpeg -i in.mkv -vf "scale=trunc(iw/10)*2:trunc(ih/10)*2" out.mkv` - Resize Video to a fitfth
`ffmpeg -i input.jpg -q:v 10 output.jpg` - Compress Picture (Level 10 of 31 (worst))
`ffmpeg -i input.mp4 -vf "crop=iw-96:ih:96:0" output.mp4` - Crop video 5% on the left site

#### ssh:

`ssh root@example.com` - Connect to your Server
`sshfs name@server:/path/to/folder /path/to/mount/point` - Mount Serverfolder to Local

#### rsync:

`rsync -vrP --delete-after ~/Websites/example/ root@marlonivo.xyz:/var/www/example/` - Push Website to Server
`rsync -avz --delete-after root@marlonivo.xyz:/var/www/dokuwiki/data/pages ~/Dokuwiki/` - Pull Dokuwiki to Local Machine
`rsync -vrP --delete-after ~/Dokuwiki/ root@marlonivo.xyz:/var/www/dokuwiki/data/pages` - Push to local Machines

#### hacking:

https://linuxcommandlibrary.com/basic/hackingtools

#### git:

`git clone htpps://github.com/repository` - clone a repository
`make && sudo make install` - installs a cloned repository

**Verknüpfung mit Repository:**

`cd ~/ort/des/ordners` - Wechsle zum Ordner
`git remote add origin https://github.com/name/repository` - Verknpüfe lokalen Ordner mit Github-Repository
`git add .` - Füge änderungen zur Warteschleife hinzu
`git commit -m "Nachricht"` - Beschreibe deine Änderung



#### neomutt:

`useradd -G mail -m [user]` - Add a user called user
`passwd [user]` - Give user a password

#### lf: 

`a` - create
`A` - mkdir
`enter` - open
`backspace`  - go back one directory 
`D` - delete
`C` - copy
`X` - Cut
`P` - paste
`r` - rename
`/` - search
`q` - quit    
`m` - mark

`h`, `j`, `k` ,`l` - to move around and enter directories and open files.
`g`, `G`, `ctrl-d`,  `ctrl-u` - movement like in vim.

- w -- drop into a terminal in the current directory. If you `exit` or press ctrl-d in the termianl, you will return to `lf`.

- ctrl-n -- new directory.

- V -- new file with `nvim`.

- space

  -- select files:

  - d -- cut files to lf's clipboard.
  - y -- yank files to lf's clipboard.
  - p -- paste/move copied/cut files.
  - C -- copy selected files to a bookmarked directory.
  - M -- move selected files to a bookmarked directory.
  - Y -- copy text names of selected files to the system clipboard.

- Renaming files:

  - c -- rename the selected file.
  - A -- rename the selected file, starting at end.
  - a -- rename the selected file, starting after the extension.
  - I -- rename the selected file, starting at beginning.
  - i -- rename the selected file, starting before extension.
  - B -- **bulk rename**: use vidir to mass edit all files in the directory.

- s -- sort files by a different metric.

- z -- show extra data or hidden files.

#### st:

`alt + j/k/alt + Up/Down/alt + mouse wheel` - scroll up or down in the terminal history.
alt + u/d/alt + pageup/pagedown - faster scroll.
alt + shift + j/k - decrease or increase font size.
alt + c - copy selected text to clipboard.
shift + insert - paste clipboard contents.
alt + l - **open a link/URL**: pulls all URLs from terminal and allows you to pick one to open via dmenu.
alt + y - copy a link/URL: same as above, but copies the URL.
alt + o - **copy the output from a recent command.**
alt + a/s - decrease/increase transparency.

#### vim:

`:e` - reload
`:q` - quit
`:q!` - quit without saving changes
`:w` - write file
`:x` exit
`:%d` - Deleting everything in file
`:PlugUpgrade`  - Upgrade Plugins
`:r [file]` - insert from file
`:[line],$d` - Delete till end of file from line
`:2,$s/^/0.0.0.0 /` - Insert x infront of every line beginning from 2

navigation:
`k` - up 
`h` - left 
`l` - right 
`j` - down 
`w` - next start of word 
`W` - next start of whitespace-delimited word 
`e` - next end of word 
`E` - next end of whitespace-delimited word 
`b` - previous start of word 
`B` - previous start of whitespace-delimited word 
`0` - start of line 
`$` - end of line 
`gg` - go to first line in file 
`G` - go to end of file 
`gk` - move down one displayed line 
`gj` - move up one displayed line
`a` - append after the cursor 
`A` - append at the end of the line 

edit:
`i` - insert before the cursor 
`I` - insert at the beginning of the line 
`o` - create a new line under the cursor 
`O` - create a new line above the cursor 
`R` - enter insert mode but replace instead of inserting chars 
`u` - undo
`yy` - yank (copy) a line
`y {motion}` - yank text that {motion} moves over
`p` - paste after cursor
`P` - paste before cursor
`x` - delete a character
`dd` - delete a line

------

## **Gui:**

#### dwm:

`Mod j/k` – Cycle thru windows
`Mod r-click` - Make Window float
`Mod l-click` - Change Window Size
`Mod Space` – Make selected window the master 
`Mod h/l` – Change width of master window
`Mod z/x` – Increase/decrease gaps 
`Mod a` – Toggle gaps
`Mod Shift Space` – Un/Make a window float
`Mod Shift 1-9` - Send window to workspace
`Mod r-click shift 1-9` - Take Window with you
`Mod b` – Toggle statusbar
`meta f` - Fullscreen a Window
`meta q` - Cloze a Window

Utilities:

`meta k` - Start KDElive
`meta w` - Start Browser
`meta e` - Start File Browser
`meta s` - Start Syncthing 

#### typora:

`strg ,` - Settings
`strg h` - search for input
`strg alt c` - Convert to Code 
`strg 1-6` - Convert to Heading 1-6

#### mpv:

`f` - toggle Fullscreen
`w` - Zoom Out
`e` - Zoom In
`o` - show progress
`s` - Screenshot the current Frame

#### firefox:

`?` - show help
`f` - show quick keybinding's
`j` - scroll down 
`k` - scroll up
`s` - youtube fullscreen 
`/` - Enter Find Mode
    `n` - cycle trough Find Mode words
`r` - reload tab
`t` - new tab
`x` - close tab
`o` - open searchbar
`strg tab` - Cycle trough open Tabs
`strg shift s` - make a screenshot
`strg shift h` - Look for search history / downloads
`strg shift k` - Developer console
`alt left` - Go one step back 
`alt right` - Go one step forth

Quicklinks`

`strg y` - Youtube
`strg g` - GrapesJS
`strg d` - Deepl

#### libreoffice:

`strg k` - Open Shortcut Menu
`strg alt left` - Select to Beginning of Line 
`strg e` - Export directly as PDF
`strg 1-6` - Convert to Heading 1-6
`strg o` - Optimal View 

#### sxiv:

`b` - hide bar
`W` - fit image to windowRotation:
`<` - Rotate image by 90 degrees.
`?` - Rotate image by 180 degrees.
`+` - Zoom Out
`-` - Zoom out
`q` - Quit sxiv
`strg shift b` - Buchstaben kleiner stellen 

#### fcitx:

`strg space` - Change Language input

