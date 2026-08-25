+++
title = 'OS/firmware Update'
description = 'Instructions for updating the KIPR controller operating system'
+++

Updating the firmware can fix a variety of bugs.
There are several update methods.

## USB Update

> [!TIP]
> This is the KIPR recommended and the most reliable update method.

Visit the [hardware and software page](https://www.kipr.org/kipr/hardware-software/kipr-wombat-firmware) and download the update `.zip` file.
Ensure the USB is formatted such that both your computer and the KIPR controller can read it.
The most universally compatible filesystem is FAT32, so start there.
Copy the zip file to a USB drive, **then unzip it and keep the zip file**.
Some versions take a folder and others take a zip, so cover your bases by including both.
Power on your Wombat and navigate to *Settings > Update*.
Select the latest version in the menu on the left and then click *USB Update*.

The update will 10–20 minutes, so be patient and wait for it to finish.
You know it's done when it reboots back to the main menu.
