git clone https://github.com/jacobm3/gbin.git && echo ". ~/gbin/jacobrc" >> ~/.bash_profile

echo '%sudo  ALL=(ALL) NOPASSWD: ALL' | sudo tee -a /etc/sudoers

sudo apt install curl && curl -fsSL https://raw.githubusercontent.com/jacobm3/gbin/main/ubuntu-setup.sh | bash 


## desktop env
sudo snap install bitwarden


echo 'setxkbmap -option caps:swapescape' >> ~/.jacobrc.local

gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Alt>'
