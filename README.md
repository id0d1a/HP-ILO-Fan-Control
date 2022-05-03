# HP ILO FAN CONTROL ESXI EDITION
TESTED ESXI 7 WITH THIS MOD
Uses a Custom ROM for The Hp ILO adapter

### Reddit Post

https://www.reddit.com/r/homelab/comments/hix44v/silence_of_the_fans_pt_2_hp_ilo_4_273_now_with/

### Original Repo

https://github.com/That-Guy-Jack/HP-ILO-Fan-Control


### Steps

1. Create Ubuntu ISO
2. Ensure ILO Security is Disabled via dipswitch on mobo
3. Flash new ILO
4. Write ILO creds down & ensure ssh is enabled
5. Reboot into ESXI
6. Run both of these commands

```esxcli network firewall ruleset set -e true -r httpClient```

```esxcli network firewall ruleset set -e true -r sshClient```

This allows outgoing http and ssh traffic. Not sure why this is disabled by default.

7. Run a simple test

```
mkdir ~/test && wget https://raw.githubusercontent.com/thomaswilbur/HP-ILO-Fan-Control/main/Files/autofan.sh --no-check-certificate
```

8. Edit autofan.sh with your credentials
9. Run it!

```
sh autofan.sh
```
