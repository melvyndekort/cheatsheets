---
title: ZFS
description: ZFS - the Enterprise-grade File System for Everyone
logo: zfs.png
draft: false
---
### Initial setup of ZFS storage pool
```
dd if=/dev/zero of=/dev/sda bs=4M count=100
parted /dev/sda mklabel gpt
parted /dev/sda mkpart storage-hdd1 0% 100%

dd if=/dev/zero of=/dev/sdb bs=4M count=100
parted /dev/sdb mklabel gpt
parted /dev/sdb mkpart storage-hdd2 0% 100%

zpool create -f -o ashift=12 storage mirror storage-hdd1 storage-hdd2

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
zfs create storage/audiobooks
zfs create storage/backups
zfs create storage/docker
zfs create storage/downloads
zfs create storage/ebooks
zfs create storage/erotica
zfs create storage/kids
zfs create storage/movies
zfs create storage/music
zfs create storage/photos
zfs create storage/software
zfs create storage/torrents
zfs create storage/tvshows

chown 8888:8888 audiobooks downloads ebooks erotica kids movies music photos software torrents tvshows
```

### Setup of scrubbing

#### Manual scrub
zpool scrub storage

#### Automate scrub once a month
systemctl enable zfs-scrub-monthly@storage.timer

### Problem solving

#### Manually fix load problems during boot
zpool import -d /dev/disk/by-id storage

