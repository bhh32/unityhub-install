#!/usr/env/bash

# Install the gpg public key
wget -qO - https://hub.unity3d.com/linux/keys/public | gpg --dearmor | sudo tee /usr/share/keyrings/unityhub.gpg > /dev/null # Redirect the tee stdout to /dev/null; creating the file only

# Install the unityhub repo into the apt source list directory
sudo echo "deb [signed-by=/usr/share/keyrings/unityhub.gpg] https://hub.unity3d.com/linux/repos/deb stable main" > /etc/apt/sources.list.d/unityhub.list

# Update apt's repository list and install unity hub
sudo apt update
sudo apt install -y unityhub

echo -e "\n\nUnity Hub has successfully been installed!\n\n"
