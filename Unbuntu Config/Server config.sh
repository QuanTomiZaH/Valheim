https://re-actor.net/valheim-dedicated-server-in-linux/
https://github.com/Nimdy/Dedicated_Valheim_Server_Script/blob/main/build_dedicated_valheim_server.sh

Crontab:
20 5 * * * cp /home/steam/.config/unity3d/IronGate/Valheim/worlds/MaximusPrime.db /home/steam/backups/MaximusPrime-$(date +"\%Y-\%m-\%d-\%T").db
21 5 * * * cp /home/steam/.config/unity3d/IronGate/Valheim/worlds/MaximusPrime.fwl /home/steam/backups/MaximusPrime-$(date +"\%Y-\%m-\%d-\%T").fwl
25 5 * * * find /home/steam/backups/MaximusPrime*.* -maxdepth 1 -type f -mtime 7 -delete
30 5 * * * systemctl stop valheimserver.service
33 5 * * * /home/steam/steamcmd +login anonymous +app_update 896660 validate +exit
42 5 * * * reboot
45 5 * * * systemctl start valheimserver.service

Backup location:
/home/steam/backups
mkdir /home/steam/backups


Worlds location:
/home/steam/.config/unity3d/IronGate/Valheim/worlds

Firewall:
sudo ufw allow 2456:2458/udp
sudo ufw allow 2456:2458/tcp
