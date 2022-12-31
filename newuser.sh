#!/bin/bash
# Nelson Tovar simple script to add a user with Key
echo "Type the name of the user"; read USER
sudo useradd -m -d /home/$USER -s /bin/bash $USER
passwd $USER
mkdir -p /home/$USER/.ssh/
touch /home/$USER/.ssh/authorized_keys
chown -R $USER:$USER /home/$USER/.ssh
chmod 700 /home/$USER/.ssh
chmod 600 /home/$USER/.ssh/authorized_keys
sudo usermod -aG sudo $USER
echo "Type the content of your Public Key file (.pub)"; read PUB
echo $PUB | sudo tee -a /home/$USER/.ssh/authorized_keys
echo "Done. You should be able to SSH as $USER with the file .key that you have. Enjoy ;)"
