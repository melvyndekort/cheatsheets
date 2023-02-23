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

mkfs.btrfs -L storage -m raid1 -d raid1 /dev/disk/by-partlabel/storage-hdd1 /dev/disk/by-partlabel/storage-hdd2
```

### Setup fstab for automounting at boot
```
UUID=$(blkid -s UUID -o value /dev/disk/by-label/storage)

cat <<EOF>>/etc/fstab
UUID=$UUID /storage            btrfs defaults,nofail,noatime,autodefrag   0 0
EOF

mkdir /storage
systemctl daemon-reload
mount -a
```

### Creation of Btrfs subvolumes
```
cd /storage

btrfs subvolume create audiobooks
btrfs subvolume create backups
btrfs subvolume create docker
btrfs subvolume create downloads
btrfs subvolume create ebooks
btrfs subvolume create kids
btrfs subvolume create movies
btrfs subvolume create music
btrfs subvolume create photos
btrfs subvolume create software
btrfs subvolume create torrents
btrfs subvolume create tvshows

chown 8888:8888 audiobooks downloads ebooks kids movies music photos software torrents tvshows
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
Description=Scrub the Btrfs storage filesystem

[Service]
ExecStart=btrfs scrub start -Bd /dev/disk/by-label/storage
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
