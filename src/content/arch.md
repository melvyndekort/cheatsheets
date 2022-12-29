---
title: Arch
description: Arch Linux - A simple, lightweight distribution
logo: arch.png
draft: false
---
### Upgrade Arch Linux keyring
```
pacman -S archlinux-keyring
```
or
```
rm -R /etc/pacman.d/gnupg
pacman-key --init
pacman-key --populate archlinux
```
### Verify lock status of user
```
passwd --status user
```
### Unlock user
```
passwd --unlock user
```
