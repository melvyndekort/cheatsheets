---
title: Nmap
description: Nmap - network discovery and security auditing
logo: nmap.png
draft: false
---
### Host Discovery Scans
{{< table >}}
Command | Description
--- | ---
`nmap -vvv -sn -sL 192.168.1.0/16` | DNS scan
`nmap -vvv -sn -PR 192.168.1.0/16` | ARP scan
`nmap -vvv -sn -PS 192.168.1.0/16` | SYN scan
`nmap -vvv -sn -PA 192.168.1.0/16` | ACK scan
`nmap -vvv -sn -PE 192.168.1.0/16` | ICMP echo scan
`nmap -vvv -sn -PP 192.168.1.0/16` | ICMP timestamp scan
`nmap -vvv -sn -PM 192.168.1.0/16` | ICMP address mask scan
`nmap -vvv -sn -PO160 192.168.1.0/16` | Non-TCP/UDP protocol scan
{{< /table >}}
