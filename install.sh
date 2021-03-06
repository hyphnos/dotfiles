# Install Debs
sudo apt update
sudo apt upgrade -y

echo ">>> Instalando Gnome Tweak Tool:"
sudo apt install gnome-tweak-tool -y

echo ">>> Instalando Git:"
sudo apt install git -y

echo ">>> Instalando VSCode:"
sudo snap install code --classic

echo ">>> Instalando Insomnia:"
sudo snap install insomnia
sudo snap install insomnia-designer

echo ">>> Instalando Spotify:"
sudo snap install spotify

# Install Docker
echo ">>> Instalando Docker:"
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
sudo groupadd docker
sudo usermod -aG docker $USER

# Create folders
echo ">>> Criando Pastas:"
mkdir ~/Projetos
mkdir ~/Remoto
mkdir ~/.ssh

# Install .gitconfig
echo ">>> Copiando .gitconfig:"
cp .gitconfig ~/
