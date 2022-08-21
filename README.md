# Linux-dots
Just some configurations use on my Linux desktop

Now for some info

Start by getting the repo

--------------------------------------------------

git clone https://github.com/Apzeta/Linux-dots.git

--------------------------------------------------

Grub config set up or change
----------------------------------------------------------------
1. Go to the following folders

    cd /etc/deafult/grub
    cd /boot/grub
    
An make a backup of the files then change them with one's clone

Then update grub
---------------------------------------------------------------
 
 sudo grub-mkconfig -o /boot/grub/grub.cfg
 
 sudo update-grub

----------------------------------------------------------------

Neofetch set up change
-------------------------------------------------------------------------

cd .config/neofetch

then backup the original .config then change the .conf eith the one clone

-------------------------------------------------------------------------

In case you don't have neofetch on your system due the following

For Debian based

-------------------------

sudo apt install neofetch

-------------------------

For Arch bssed

-----------------------

sudo pacman -S neofetch

-----------------------

Gentoo based

----------------

emgerge neofetch

----------------

Fedora

--------------------

dnf install neofetch

--------------------
