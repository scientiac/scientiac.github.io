+++
title = "Home Manager: Cosy Home With Nix"
date = 2024-07-31
[taxonomies]
writings=["Articles"]
+++

Home Manager is a Nix thing that helps one manage their home directory, specially the dotfiles in a Nix fashion. And here I am talking about `Nix` not `nix*`. It is nix* but not that nix* but you can use it in most kind of nix* if the nix* you mainly know are most linux distros and macos. 

Confusing right? No! I made it confusing! Home manager is just a tool to write all your configurations (.dotfiles) in a cosy Nix language and is primarily inspired by the NixOS and use the Nix package manager. Well, a little confusing because the OS is called Nix, the language is called nix and also the package manager is called Nix, and at last all unix based systems are also in combination known as nix*(with an astrisk in the end).

![nix and home manager](/images/home-manager/home-manager.png)

Okay, one last time. Home manager is just a tool to manage the dotfiles using the Nix language, leveraging the power of the Nix package manager and is inspired by the NixOS configuration. It focuses heavily on reproducability being distro agnostic despite of being focused around NixOS.

Still pretty confusing right? Well, it is what it is.

## How I use it

I am writing this blog on my new windows machine, inside WSL in a NixOS-WSL distro where most of my configuration files are managed by Home Manager. And this home manager configuration is the same configuration that I use in my NixOS system, with just the configurations of the graphical applications removed.

Pretty cool right? It even works on windows(technically not, but still). I use it to manage bash, git, lazygit, helix, newsboat, starship, zellij, zoxide and other applications in the terminal world and alacritty, firefox, foot, imv, mpv, sioyek, spotify and other tools in the graphical realm. And I have used it in linux, on mac, currently in windows via WSL and even on android inside Nix-on-Droid recycling the same configurations everywhere. See? all major operating systems (technically inside linux except mac) and on both ARM and x86 architecture.

## Why use it

It is one of those things that you think is very time consuming and difficult to manage and use but it saves time on the long run. You can easily transafer your application configurations from one device to another in a file(technically, because you would not want to write all the configs of all your things in a single file) and Nix will handle installations and setup of all those applications using just that file. All you need is nix to be installed on your system. And since, nixpkgs is the biggest package repository among any linux distribution I dont even think of using any other package manager to install things even if I am on any non NixOS distributions. And the cherry on top, everything will be version controlled using git(you will be forced to, haha) so you will never lose your precious configurations(even the history).

## How to use it

First and foremost, you need nix(the package manager) installed on your system. Then I suggest you to enable `flakes` and `nix-command` in your nix.conf file though they are experimental features. Despite the fact that they are experimental features, they are already widely adopted and are instead preferred by nix users over the traditional method.

Then initialize a flake on a directory, add the home manager inputs as they tell you in the documentation on how to use home manager with flakes. Then write your configurations. Finally, switch to your new home manager configuraton.

In short, follow the docs and you'll be set. And maybe as a head start watch `vimjoyer`'s video on home-manager.

### Lastly...

I just love nix and it's ecosystem and I am pretty biased toward it. Home manager may not be your cup of tea but give nix a try, using it as a secondary package manager for your distribution like you use flatpaks and snaps. It may not be regualr user friendly but it is very developer/tinkerer friendly if you even scratch a tiny surface of it. That's all I've got to say today, see ya.
