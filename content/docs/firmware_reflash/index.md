+++
title = 'OS/firmware Image Write'
description = 'Instructions for writing the KIPR controller operating system to a micro-SD card'
+++

> [!CAUTION]
> Writing a new image to your controller is comparable to factory resetting your phone.
> If you do not back up your programs prior to writing the image, they will be gone forever!

## What is an image?

What happens when you capture an image (i.e. take a picture) with a camera?
The camera records exactly what the physical scene looked like at the time of the snapshot.

Similarly, an operating system (OS) image captures the exact state of the entire system at the moment of the snapshot.
KIPR sets up all of the programs required to make the controller run, then we create the snapshot.

Most OS images, including those created by KIPR, have the filetype `img`.

Requirements:
- A computer on which you can install software *or* which an image writer installed.
- Micro-SD card writer.
- Internet connection.

Unscrew and remove the cover on the back of the controller case and take out the micro-SD card, then flash the image.
If you don't know how, see the following guide for using Balena Etcher.

## Balena Etcher

[Balena Etcher](https://etcher.balena.io/) is a free and easy-to-use image writer available on MacOS, Windows, and Linuxi.
Follow the installation instructions on their site and download the [WombatOS 31.2.0 image](https://files.kipr.org/wombat/Wombat_v31.2.0.img).

Select the image, select the SD card plugged into your computer, then click "Flash!"
