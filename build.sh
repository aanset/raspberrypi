sudo nmtui
sudo reboot
sudo rpi-connect on
sudo rpi-connect signin
loginctl enable-linger
sudo apt update && sudo apt upgrade -y
sh -c "$(curl -sL https://nextdns.io/install)"
sudo nano /etc/nextdns.conf
sudo service nextdns start
curl -sSL https://install.pi-hole.net | bash
sudo pihole setpassword
pihole -up
sudo pihole -g
curl -fsSL https://get.casaos.io | sudo bash
curl -s -S -L https://raw.githubusercontent.com/AdguardTeam/AdGuardHome/master/scripts/install.sh | sh -s -- -v
scp pi@192.168.168.250:/home/pi/AdGuardHome.yaml /opt/AdGuardHome/.
sudo nano /opt/AdGuardHome/AdGuardHome.yaml 
sudo /opt/AdGuardHome/AdGuardHome -s start
sudo /opt/AdGuardHome/AdGuardHome --update
sudo rpi-eeprom-update
sudo rpi-eeprom-update -a
sudo reboot
