+++
title = 'Write a new OS image'
description = "Reinstall the controller's operating system from scratch."
+++

> [!CAUTION]
> Writing a new OS image will erase all programs and files stored on the controller.
>
> Before continuing, [back up any programs you want to keep](/docs/backup_programs/).

## Quick reference

1. [Back up any programs you want to keep](/docs/backup_programs/).
1. Download and install [Balena Etcher](https://etcher.balena.io/).
1. Download the {{< wombatos_image_link >}}.
1. Turn off and unplug the controller.
1. Remove the microSD card cover and take out the card.
1. Insert the card into a reader connected to your computer.
1. Cancel any prompt asking to format, repair, or initialize the card.
1. Open Balena Etcher and select the WombatOS `.img` file.
1. Select the microSD card as the target.
1. Click **Flash** and wait for writing and verification to finish.
1. Safely eject the card and reinstall it in the controller.
1. Replace the cover, reconnect power, and turn on the controller.

> [!WARNING]
> Writing the image erases everything on the microSD card.
> Verify that the selected target is the controller's card before clicking **Flash**.

## What is an OS image?

An operating system image is a file that contains all the software needed to run the Wombat controller.

KIPR provides this file with WombatOS and the required controller software already installed.
Writing the image to the controller's microSD card restores the controller to a clean, known state, similar to factory-resetting a phone.

The image file uses the `.img` extension.

## What you need

- A Windows, macOS, or Linux computer
- An internet connection
- A microSD card reader
- A small screwdriver
- At least 8 GB of free space on your computer
- Permission to install software on your computer

The microSD card is already installed inside the controller.

## Before you begin

Save any programs you want to keep somewhere other than the controller.

During this process, your computer may display a message asking whether you want to format, initialize, repair, or erase the microSD card.
Cancel or close that message.
Do not allow the computer to format the card.

## Download the required files

Download and install [Balena Etcher](https://etcher.balena.io/).
Balena Etcher is a free program used to write OS images to SD cards.

Download the {{< wombatos_image_link >}}.

If the downloaded image is in a `.zip` file, extract it before continuing.
After extraction, you should have a file ending in `.img`.

## Remove the microSD card

Turn off the controller and disconnect its power cable.

Turn the controller over.
Use a screwdriver to remove the microSD card cover from the bottom of the case.

Carefully press or pull the microSD card out of its slot.
Insert the card into the microSD card reader, then connect the reader to your computer.

## Write the image

Open Balena Etcher.

Click **Flash from file**, then choose the downloaded WombatOS `.img` file.

Click **Select target**, then choose the microSD card.

> [!WARNING]
> The flash procedure will overwrite all data on the target you choose, so make sure you select the microSD card and not your computer's internal drive or another connected storage device.
>
> The controller's microSD card is usually about 8 GB or 16 GB.

Click **Flash** and approve any permission prompts from your computer.

Wait for Balena Etcher to finish writing and verifying the image.
Do not remove the card or disconnect the card reader while this is in progress.

## Reinstall the microSD card

When Balena Etcher reports that the process is complete, safely eject the microSD card from your computer.

Remove the card from the reader and insert it back into the controller.
Make sure it is inserted in the same orientation as before and is fully seated.

Replace the microSD card cover and tighten the screws until they are secure.
Do not overtighten them.

Reconnect power and turn on the controller.
The first startup after writing a new image may take longer than usual.
