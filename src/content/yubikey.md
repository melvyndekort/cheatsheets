---
title: YubiKey
description: YubiKey - Protect the digital you
logo: yubikey.png
draft: false
---
### Using existing yubikey on new computer
```
gpg --card-edit
  fetch
  quit

gpg --card-status

gpg --edit-key <key identifier>
  trust
```
