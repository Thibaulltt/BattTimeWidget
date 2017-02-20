# BattTimeWidget
This little piece of code lets you have a widget in [BitBar](https://github.com/matryer/bitbar) that grabs information about your battery &amp; charging status on your Mac computer. 

This widget has been created using [imwally](https://github.com/imwally)'s excellent work (you can find it [here](https://github.com/imwally/battstat)). It is just a wrapper to use in bitbar. It gives information about the time left until full charge of the laptop, or the time left until the full discharge of the laptop.

It has not been tested on a desktop computer, as I have not access to one right now.

It is proven to work on macOS 10.12.3 on a Macbook Pro Unibody, but I cannot test it on any other OSes & machines. If you can test it, send me your OS/machine through a message on GitHub or on my personnal [twitter](https://www.twitter.com/tdv_fr) and I will add it to the list of working configs.

You are free to use this software however you want as long as you credit to this repo as well as [imwally's repo](https://www.github.com/imwally/battstat).

# Installation & troubleshooting

Download the files on your computer, and copy the files BattTimeWidget.10s.sh and the 'dependencies' folder into your bitbar widget folder, refresh bitbar and you should be good to go !

If you cannot install the files, or the bitbzar widget somehow isn't working properly, check you have the permissions to execute the files (`chmod +x BattTimeWidget.10s.sh;chmod +x dependencies/battstat`)

# Pictures

When you are plugged in and charging :

(http://i.imgur.com/JjKc4Sm.png)

When you are on battery, with more than 2 hours left : 

(http://i.imgur.com/RQuJjuS.png)

# Known issues

`pmset`, the utility on which `battstat` is based, seems not to calculate the time remaining on battery power when the battery percentage is at 100%.

Pics in just a bit ...
