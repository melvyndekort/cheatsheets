---
title: Nextcloud
description: Nextcloud - Online collaboration platform
logo: nextcloud.png
draft: false
---
### Nextcloud command interface
```
docker exec --user www-data nextcloud php occ --help
```

#### Get status information
```
docker exec --user www-data nextcloud php occ status
```

#### Run upgrade routines
Use this AFTER a new version of the container is deployed:
```
docker exec --user www-data nextcloud php occ upgrade
```

#### Maintenance mode
Turn on:
```
docker exec --user www-data nextcloud php occ maintenance:mode --on
```
Turn off:
```
docker exec --user www-data nextcloud php occ maintenance:mode --off
```

#### Files
Scan a specific path:
```
docker exec --user www-data nextcloud php occ files:scan --path=...
```
Scan all paths:
```
docker exec --user www-data nextcloud php occ files:scan --all
```
Repair tree:
```
docker exec --user www-data nextcloud php occ files:repair-tree
```

#### Two Factor auth
Disable 2FA for a user:
```
docker exec --user www-data nextcloud php occ user:list
docker exec --user www-data nextcloud php occ twofactorauth:disable <UID>
```
Disable 2FA enforcing:
```
docker exec --user www-data nextcloud php occ twofactorauth:enforce --off
```
