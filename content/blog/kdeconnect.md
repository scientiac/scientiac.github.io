+++
title = "KDE Connect"
date = 2021-08-29
[taxonomies]
writings=["Articles"]
+++

## Quality integration between Android and Linux.

KDE Connect is a KDE application that connects your phone to your computer if you have a Linux Desktop (Windows integration is on beta). It is very Powerful, I can say that it is the best among all the Phone - Computer integration softwares across all the operating systems. The Features of KDE connect are as follows : 

### Sharing Files
You can send files to or from the computer very easily. It can either be done by opening the app and choosing the 'Send Files' option or just by opening the share menu from the file and choosing the recieving device.

### Multimedia Control
You can pause, play, rewind, foreward, turn volume up or down from each device connected via KDE Connect. You can control the media on your phone from your computer or you can control the media on your computer from your phone.

### Presentation Remote
You can turn your phone to a presentation remote if you need it. It can use the accelerometer and gyroscope sensor to detect the motion and point on the area on your screen just by moving your phone in the air. You also can change slides from the app itself.

### Remote Input
You can use KDE Connect as a trackpad and a keyboard for your computer of you need.  This functionality can be set both ways, you can also use your computer to type things on your phone. It also can bring mouse like functionality where it creates a mouse pointer on your phone which can be used via the computer.

### Browse Your Phone's Storage
KDE Connect uses sshfs to connect your phone's storage to your computer wirelessly. You can edit, move, copy, rename, etc the files of your phone via your computer in it's file manager. You can basically do anything you can do with the file manager.

### Find Your Device
You can use your computer to ring your phone or use your phone to ring your computer if can't find one.

### Sync Notifications
You can receive the Notifications of your phone on your computer as well as can receive the Notifications of your computer on your phone. You also can reply from the other device if it support replying from heads up notification.

### Send Text Messages
You can send messages to your contacts from your computer without needing to touch your phone if you prefer texting via cell network.

### Clipboard Sync
You can sync the clipboards of your devices so that you can copy something on one device and paste the same thing on the other device.

### Terminal Commands
This is the most powerful feature of KDE Connect and which I love the most. You can set pre configured buttons on your phone with a particular line of command which will be executed on your computer with a single click from your phone. Some of the things you can do are :

* Shutdown
* Restart
* Hibernate
* Sleep
* Change Brightness
* Logout
* Lock and Unlock Desktop
* Open applications
* Take screenshots

The possibilities are endless, you can do anything you can do on a terminal. This feature alone makes KDE connect far superior than any other software.

## Bonus Tip :
You can easily get the screenshot of your desktop on your phone with a single click of a button on your phone with this command preconfigured on the KDE connect settings.

Firstly,
Install flameshot and timer
Make a hidden screenshot folder.
Then, set the following command on the "run command" section of KDE connect settings.

> flameshot screen -p <Your New Screenshot Folder's Path> && timer 5 s ~/audio/duck_song.mp3 hide && mv <Your New Screenshot Folder's Path/*> <Path of your device  folder which is mounted via sshfs> 

Note : Your smartphone should be mounted to the computer via KDE connect.

