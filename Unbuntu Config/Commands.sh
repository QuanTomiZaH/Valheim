#Create a User for SteamCD
useradd -m steam
cd /home/steam

#Install dependancies and steamcd
add-apt-repository multiverse
dpkg --add-architecture i386
apt-get update
apt-get install lib32gcc1 steamcmd
apt install libsdl2-2.0-0:i386

#Link the user to the location
ln -s /usr/games/steamcmd steamcmd

#Start the server
cd /home/steam
./steamcmd

#Login and perform actions
login anonymous

#Set Install Location
#force_install_dir /home/steam/valheim
#force_install_dir /etc/valheim
force_install_dir /home/steam

#Install Steamapp
app_update 896660
#Validate installation
app_update 896660 validate
#Jump out of steamCD
quit

#edit the start server shell file
vi /etc/valheim/start_server.sh
#add to the command "> /dev/null &"

#save location:
/root/.config/unity3d/IronGate/Valheim/worlds

#Run the server
./etc/valheim/start_server.sh
