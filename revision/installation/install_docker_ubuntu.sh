#!/bin/bash

# Mise à jour du système
sudo apt-get update
sudo apt-get upgrade -y

# Suppression des paquets Docker non trouvés (si vous n'en avez pas besoin)
sudo apt-get remove --purge docker-ce docker-ce-cli containerd.io -y

# Suppression des paquets VirtualBox
sudo apt-get remove --purge virtualbox-dkms virtualbox virtualbox-qt -y

# Correction des dépendances
sudo apt-get install -f -y

# Installation de Docker
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# Installation de Docker Compose
Dieu
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# Installation de VirtualBox
sudo apt-get install virtualbox -y

# Vérification des versions installées
docker --version
docker-compose --version
VBoxManage --version

echo "Script terminé."