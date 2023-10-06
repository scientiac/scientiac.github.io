+++
title = "NixOS: A Purely Functional Linux Distribution"
date = 2023-09-27
[taxonomies]
writings=["Articles"]
+++

## There's a Problem
Existing package and system configuration management tools suffer from an imperative model, where system administration actions such as package upgrades or changes to system configuration files are stateful: they destructively update the state of the system. 

This leads to many problems, such as the inability to roll back changes easily, to deploy multiple versions of a package side-by-side, to reproduce a configuration deterministically on another machine, or to reliably upgrade a system.

## The Solution

**A functional system configuration model.**

This means, all static parts of a system (such as software packages, configuration files and system startup scripts) are built by pure functions and are immutable, stored in a way analogous to a heap in a purely functional language.

NixOS, a non-trivial Linux distribution that uses the Nix package manager to build the entire system configuration from a modular, purely functional specification.

## NixOs Features

- **A [reproducible](https://reproducible-builds.org/) and [declarative](https://en.wikipedia.org/wiki/Declarative_programming) system**: This means that the operating system can be configured using a declarative system that can be reproducible in multiple devices.

- **[Atomic](https://en.wikipedia.org/wiki/Atomicity_(database_systems)) upgrades and rollbacks**: This feature keeps track of  each time the system configuration is changed (generations) and makes it available to the user to roll back to the previous changes.

- **[Binary](https://en.wikipedia.org/wiki/Executable) caching**: This provides a unique compromise between the binary-oriented approach used by distributions such as Debian and the [source](https://en.wikipedia.org/wiki/Source_code)-oriented approach used by distributions such as Gentoo. Binaries can be used for standard components, and custom-built packages and modules can be used automatically when a pre-built binary is not available.

### NixOS Commands

#### Normal

- **nixos-rebuild** is a command to rebuild the entire system according to the declarations in `/etc/nixos/configuration.nix` . It consists of many flags like `switch`,`boot`,`--flakes` etc to specify the rebuild method.

- **nix-collect-garbage** is a tool to clear the garbage packages (the packages which were installed during a rebuild but now are not needed for the smooth functioning of the system as per the declarations), it comes handy to clear the previous generations which are not required anymore to fallback on.
#### Imperative Operations

- **nix-shell** is a (legacy) tool to spawn temporary virtual environments with packages that are not in the system. You can use `nix-shell -p git` you'll be dropped into a nix-shell environment where you can use the `git` command and if you exit the shell the environment will be lost.

- **nix-env** a (legacy) tool to use nix package manager in an imperative style similar to other linux distributions. You can use `nix-env -iA pkgs.firefox` to install firefox and keep the changes in a stateful manner.

- **nix-channel** a (legacy) tool to manage channels (similar to repositories), it allows to do things like changing the version of the channel that the package manager will pull from. For eg: If you want to use the latest unstable branch but you are running a stable release version of system (22.04 or similar) you can change it by using the nix-channel.

#### Flakes (Experimental Features)

This is a feature of nix that improves reproducibility, composability and usability in the Nix ecosystem. A flake is a source tree (such as a Git repository) containing a file named `flake.nix` that provides a standardized interface to Nix artifacts such as packages or NixOS modules.

To enable flakes, you should add the following configuration to your `configuration.nix` file
```nix
  nix = {
    package = pkgs.nixFlakes;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };
```

In general `nix flakes` does the following changes to the old nix workflow:

1. It **replaces channels** which was an imperative operation which diverted from the fact that NixOS was meant to be fully declarative.
2. **Ability to lock dependencies** by creating a flake.lock file ensuring reproducability.
3. Makes it easier to **install external software** that is  not yet packaged in NIxpkgs.
4. Adds a way to **import Nix expressions from elsewhere** on the internet.

*Sources:*  
[NixOS Research Paper](https://edolstra.github.io/pubs/nixos-jfp-final.pdf)  
[Nix Research Paper](https://edolstra.github.io/pubs/nspfssd-lisa2004-final.pdf)  
[NixOS Website](https://nixos.org)  

*Learning Resources*  
[How to Learn Nix](https://ianthehenry.com/posts/how-to-learn-nix/)  
[Intro to Nix Flakes by TWEAG](https://www.tweag.io/blog/2020-05-25-flakes/)  
[The Nix Hour (Youtube)](https://www.youtube.com/playlist?list=PLyzwHTVJlRc8yjlx4VR4LU5A5O44og9in)  

> I will be updating more notes about nixOS on top of this [map](https://map.scientiac.space/nodes/nixOS/).
