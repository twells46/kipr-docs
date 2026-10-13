+++
title = 'Back up and restore programs'
description = 'Back up the programs stored on the controller and restore them later.'
+++

## Method 1: USB

This is the simplest method and is the KIPR recommended way to back up and restore all of your programs.

Requirements:

- USB drive formatted with the FAT32 filesystem ([what is a filesystem?](/docs/filesystems/))
- Bootable Wombat controller

### Back up

The controller has a button to back up programs onto a USB drive.

1. Power on the controller.
1. Plug the USB drive into the controller.
1. Tap **Cancel** on the popup.
1. Tap **Settings**.
1. Tap **Backup**.
1. Tap **Backup**.
1. After a moment, it should say "Backup complete."

![BotUI screens for each of the backup steps above, in order](botui/backup_full.webp)

### Restore

You can directly restore the programs saved by a backup in the previous step.

> [!CAUTION]
> Restoring programs in this manner will overwrite all existing programs.

1. Power on the controller.
1. Plug the USB drive into the controller.
1. Tap **Cancel** on the popup.
1. Tap **Settings**.
1. Tap **Backup**.
1. Tap **Restore**.
1. If you want to overwrite all existing programs with the backup, tap **Yes**.
1. After a moment, it should say "Restore complete."

![BotUI screens for each of the restore steps above, in order](botui/restore_full.webp)

## Method 2: IDE, user backup

This method downloads a single user and has the benefit that you don't need a USB drive.
However, you can only download one user at a time, so it can be cumbersome if you have many users to back up.

Requirements:

- Bootable controller

### Back up

1. Right-click on the user in the browser.
1. Click **Download User**.
1. Click **Yes** on the popup confirmation.

![IDE screens for each of the user download steps above, in order](new_ide_user/dl.webp)

### Restore

1. Click the **+** dropdown.
1. Click **Upload User**.
1. Select the user's interface mode (in this example, Advanced).
1. Click **Choose Folder** and choose the folder you downloaded during the backup.
1. Click **Upload User**.

## Method 3: IDE, project backup

This is mostly the same as the previous method, but you back up one project at a time instead of one user.
It can be useful if you want more fine-grained control.

Requirements:

- Bootable controller

### Back up

1. Right-click on the project in the browser.
1. Click **Download Project**.
1. Click **Yes** on the popup confirmation.

![IDE screens for each of the project download steps above, in order](new_ide_proj/dl.webp)

### Restore

1. Click the **+** dropdown.
1. Click **Upload Project**.
1. Click the **Select Language** dropdown.
1. Select your language (in this example, C).
1. Click **Choose Folder** and choose the folder you downloaded during the backup.
1. Click **Upload Project**.

![IDE screens for each of the project upload steps above, in order](new_ide_proj/up.webp)

## Method 4: Copy-paste

You can copy-paste the code into, say, a Google Doc.
This is extremely simple, but KIPR *strongly* recommends against using this method.

Firstly, the system clipboard is not a purely neutral vehicle for data storage.
It can mess with whitespace (tabs and spaces), newlines/line endings, character encoding, and can even insert invisible control characters.

Secondly, inserting the code into a program like Google Docs *will* break the formatting (tabs, spaces, newlines, etc.) and can also insert invisible characters that cause strange compilation errors when you paste it back into the IDE.
You can achieve slightly better results using a simpler program like Notepad on Windows or TextEdit on Mac, but this is still vulnerable to the clipboard issues mentioned above.
