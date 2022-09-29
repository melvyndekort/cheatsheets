---
title: Libvirt
description: libvirt - The virtualization API
logo: libvirt.png
draft: false
---
### Compress qcow2 image
```
# on guest system
dd if=/dev/zero of=zerofile bs=1M; rm zerofile

# on host system
qemu-img convert -p -c -O qcow2 example.qcow2 example-copy.qcow2
```
