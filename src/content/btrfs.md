---
title: Btrfs
description: Btrfs - a modern copy-on-write file system for Linux with advanced features for fault tolerance, repair and easy administration
logo: btrfs.png
draft: false
---
### Initial setup of Btrfs mirror
```
parted /dev/sda
  mklabel gpt
  mkpart hdd1 0% 100%

parted /dev/sdb
  mklabel gpt
  mkpart hdd2 0% 100%

mkfs.btrfs -L storagefs -m raid1 -d raid1 /dev/disk/by-id/hdd1 /dev/disk/by-id/hdd2
```

### Creation of Btrfs subvolumes
```
mount -o compress=zstd /dev/disk/by-label/storagefs /mnt
cd /mnt

btrfs subvolume create @
btrfs subvolume create @audiobooks
btrfs subvolume create @backups
btrfs subvolume create @docker
btrfs subvolume create @downloads
btrfs subvolume create @ebooks
btrfs subvolume create @erotica
btrfs subvolume create @kids
btrfs subvolume create @movies
btrfs subvolume create @music
btrfs subvolume create @photos
btrfs subvolume create @software
btrfs subvolume create @torrents
btrfs subvolume create @tvshows

mkdir @/audiobooks @/backups @/docker @/downloads @/ebooks @/erotica @/kids @/movies @/music @/photos @/software @/torrents @/tvshows
chown 8888:8888 @audiobooks @downloads @ebooks @erotica @kids @movies @music @photos @software @torrents @tvshows

cd /
umount -R /mnt
```

### Setup fstab for automounting at boot
```
UUID=$(blkid -s UUID -o value /dev/disk/by-label/storagefs)

cat <<EOF>>/etc/fstab
UUID=$UUID /storage            btrfs defaults,nofail,noatime,autodefrag,compress=zstd,subvol=@           0 0
UUID=$UUID /storage/audiobooks btrfs defaults,nofail,noatime,autodefrag,compress=zstd,subvol=@audiobooks 0 0
UUID=$UUID /storage/backups    btrfs defaults,nofail,noatime,autodefrag,compress=zstd,subvol=@backups    0 0
UUID=$UUID /storage/docker     btrfs defaults,nofail,noatime,autodefrag,compress=zstd,subvol=@docker     0 0
UUID=$UUID /storage/downloads  btrfs defaults,nofail,noatime,autodefrag,compress=zstd,subvol=@downloads  0 0
UUID=$UUID /storage/ebooks     btrfs defaults,nofail,noatime,autodefrag,compress=zstd,subvol=@ebooks     0 0
UUID=$UUID /storage/erotica    btrfs defaults,nofail,noatime,autodefrag,compress=zstd,subvol=@erotica    0 0
UUID=$UUID /storage/kids       btrfs defaults,nofail,noatime,autodefrag,compress=zstd,subvol=@kids       0 0
UUID=$UUID /storage/movies     btrfs defaults,nofail,noatime,autodefrag,compress=zstd,subvol=@movies     0 0
UUID=$UUID /storage/music      btrfs defaults,nofail,noatime,autodefrag,compress=zstd,subvol=@music      0 0
UUID=$UUID /storage/photos     btrfs defaults,nofail,noatime,autodefrag,compress=zstd,subvol=@photos     0 0
UUID=$UUID /storage/software   btrfs defaults,nofail,noatime,autodefrag,compress=zstd,subvol=@software   0 0
UUID=$UUID /storage/torrents   btrfs defaults,nofail,noatime,autodefrag,compress=zstd,subvol=@torrents   0 0
UUID=$UUID /storage/tvshows    btrfs defaults,nofail,noatime,autodefrag,compress=zstd,subvol=@tvshows    0 0
EOF

mount -a
```

### Setup of scrubbing

#### Manual scrub
```
btrfs scrub start /storage
btrfs scrub status /storage
```

#### Automate scrub
```
systemctl enable btrfs-scrub@storage.timer
```
