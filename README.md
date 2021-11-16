# HP-ILO-Fan-Control
Uses a Custom ROM for The Hp ILO adapter

### Reddit Post

https://www.reddit.com/r/homelab/comments/hix44v/silence_of_the_fans_pt_2_hp_ilo_4_273_now_with/

### Steps

1. Create Ubuntu ISO
2. Ensure ILO Security is Disabled via dipswitch on mobo
3. Flash new ILO
4. Write ILO creds down & ensure ssh is enabled
5. Reboot into ESXI
6. Run install script
7. edit files
