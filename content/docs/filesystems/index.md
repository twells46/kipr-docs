+++
title = 'Computer filesystems'
description = 'Throughout this site, we often mention the need for a "FAT32 filesystem." What is a filsystem and why does it matter?'
+++


## What is a Filesystem?

Think about organizing paper files in a filing cabinet.
You wouldn't just toss papers wherever they fit, would you? You'd use folders, label drawers, and structure your system.

A computer faces a similar organizational challenge: it must manage millions of files so they can be found and opened quickly and reliably, all while ensuring data remains intact even if power unexpectedly fails.

The filesystem is the software that manages this entire process.
It converts raw storage space into named files and folders, remembers exactly where everything is located, tracks available space, and handles core details like file sizes, creation dates, and permissions.

To grasp the complexity, imagine a library:
The disk is the building.
The files are the books.
Folders are the shelves and sections.
The filesystem is the catalog, the shelving system, the checkout rules, and the map of available space.

Different filesystems are simply different methods of running that library.
They all store books, but they vary widely in speed, reliability, compatibility, maximum size, and recovery features.

## Why Does It Matter Here?

There are dozens of filesystems, and most are designed to work with only one or two operating systems.
For example, Windows uses NTFS by default, but a Mac or Chromebook cannot read or write NTFS drives.
Modern Macs use APFS, which is highly optimized for Macs but is inaccessible to other operating systems.

FAT32, however, is old and simple and therefore has broad compatibility.
It can be used on nearly every operating system, including Mac, Windows, Chromebooks, and Linux (which the KIPR controller uses).

This is why we constantly stress formatting your USB drives as FAT32: it is the "common language" that ensures your controller and your computer can reliably read and write to the drive.
