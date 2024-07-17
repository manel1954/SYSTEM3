#!/bin/bash
SCRIPTS_version=$(awk "NR==3" /home/pi/version-fecha-actualizacion)

cd /home/pi/Desktop
sudo cp Activar_dvswitch.desktop /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh ejecutar_dvswitch.sh'" /home/pi/Activar_dvswitch.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICO_DVSWITCH_OFF.png" /home/pi/Activar_dvswitch.desktop
sed -i "10c Name[es_ES]=Activar Dvswitch" /home/pi/Activar_dvswitch.desktop
cd /home/pi
sudo cp Activar_dvswitch.desktop /home/pi/Desktop
sudo rm /home/pi/Activar_dvswitch.desktop
sed -i "18c DVSWITCH=OFF" /home/pi/status.ini
sudo systemctl stop ysfgateway.service
sudo systemctl stop dmr2ysf.service
sudo systemctl stop analog_bridge.service
sudo systemctl stop ircddbgatewayd.service
sudo systemctl stop md380-emu.service
sudo systemctl stop mmdvm_bridge.service
sudo systemctl stop nxdngateway.service
sudo systemctl stop p25gateway.service



#zenity --info --ok-label= --title=DVSWITCH --window-icon=/home/pi/SYSTEM/ICONO_DVSWITCH_OFF.png --width=400 --timeout=5 --text "\n\n\nDVSWITCH DESACTIVADO"




