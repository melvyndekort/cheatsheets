---
title: ZFS
description: ZFS - the Enterprise-grade File System for Everyone
logo: zfs.png
draft: false
---
### Initial setup of ZFS storage pool
```
parted /dev/sda
  mklabel gpt
  mkpart hdd1 0% 100%

parted /dev/sdb
  mklabel gpt
  mkpart hdd2 0% 100%

parted /dev/sdc
  mklabel gpt
  mkpart hdd3 0% 100%

zpool create -f -o ashift=12 storage raidz1 hdd1 hdd2 hdd3

zfs list
zpool status -v storage

zfs set dedup=off storage
zfs set compression=lz4 storage
zfs set atime=off storage

zpool set cachefile=/etc/zfs/zpool.cache storage
systemctl enable zfs-import-cache.service
systemctl enable zfs-mount.service
systemctl enable zfs.target
systemctl enable zfs-import.target
```

### Initial setup of ZFS datasets
```
zfs create storage/movies
zfs create storage/tvshows
zfs create storage/photos
```

### Setup of scrubbing

#### Manual scrub
zpool scrub storage

#### Automate scrub once a week
systemctl enable zfs-scrub-weekly@storage.timer

### Problem solving

#### Manually fix load problems during boot
zpool import -d /dev/disk/by-id storage

