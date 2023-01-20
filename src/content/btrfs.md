---
title: Btrfs
description: Btrfs - a modern copy-on-write file system for Linux
logo: btrfs.png
draft: false
---
### Initial setup of Btrfs mirror
```
dd if=/dev/zero of=/dev/sda bs=4M count=100
parted /dev/sda mklabel gpt
parted /dev/sda mkpart storage-hdd1 0% 100%

dd if=/dev/zero of=/dev/sdb bs=4M count=100
parted /dev/sdb mklabel gpt
parted /dev/sdb mkpart storage-hdd2 0% 100%

mkfs.btrfs -L storagefs -m raid1 -d raid1 /dev/disk/by-partlabel/storage-hdd1 /dev/disk/by-partlabel/storage-hdd2
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

mkdir /storage
mount -a
```

### Setup of scrubbing

#### Manual scrub
```
btrfs scrub start /storage
btrfs scrub status /storage
```

#### Automate scrub
/etc/systemd/system/scrubber.service
```
[Unit]
Description=Scrub the Btrfs storagefs filesystem

[Service]
ExecStart=btrfs scrub start -Bd /dev/disk/by-label/storagefs
```

/etc/systemd/system/scrubber.trigger
```
[Unit]
Description=Scrubber service timer

[Timer]
OnBootSec=0min
OnCalendar=*-*-01 04:00:00
Unit=scrubber.service

[Install]
WantedBy=multi-user.target
```
