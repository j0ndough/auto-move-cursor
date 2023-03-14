# auto-move-cursor
A quick AutoHotKey script that moves the mouse cursor to a random location on the screen at a certain interval.
Also automatically shuts off the PC after a certain time of day has been reached.

Requires [AutoHotKey v1.1](https://www.autohotkey.com/download/) to run.

Various parameters can be changed within the script, such as:

**x/y**: should be equal to the horizontal and vertical resolution of your display.

**shutdownTime**: should be set to desired time you want your PC to shut down at.

**interval**: interval (in ms) at which the cursor is moved. Negative values mean the timer is only one once while positive values mean the timer runs until it is explicitly disabled. Default here is 5 minutes.
