+++
title = 'Update WombatOS'
description = "Update the controller's operating system to the latest version."
+++

Updating WombatOS on the Wombat can fix a variety of bugs.
The latest version is currently {{< recommended_wombatos_version >}}.

## USB update

> [!TIP]
> This is the KIPR recommended and most reliable update method.

1. Visit the [hardware and software page](https://www.kipr.org/kipr/hardware-software/kipr-wombat-firmware) and download the update `.zip` file.
1. Make sure your USB drive is formatted so that both your computer and the controller can read it.
   The most universally compatible filesystem is FAT32 ([what is a filesystem?](/docs/filesystems/)), so start there.
1. Copy the zip file to the USB drive, **then unzip it and keep the zip file**.
   Some versions take a folder and others take a zip, so cover your bases by including both.
1. Power on the controller and plug in the USB drive.
1. Tap *Settings > Update*.
1. Select the latest version in the menu on the left, then tap **USB Update**.

The update will take 10–20 minutes, so be patient and wait for it to finish.
You know it's done when the controller reboots back to the main menu.
