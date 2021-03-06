echo "provisioning VM..."
sudo apt update
sudo apt-get update

# install docker and run
sudo apt -y install docker.io
sudo systemctl start docker
sudo systemctl enable docker
docker --version
echo "docker installed and running..."

# create group 'docker' and add user 'vagrant' (the one I connect with) to it
sudo groupadd docker
sudo usermod -aG docker vagrant
echo "docker group created and 'vagrant' user added to it..."


# install docker compose
sudo curl -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
echo "docker compose installed..."


# install heroku cli
curl https://cli-assets.heroku.com/install-ubuntu.sh | sh
echo "heroku cli installed..."

echo "done provisioning VM."l

