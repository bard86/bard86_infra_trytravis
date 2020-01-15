sudo apt-get --assume-yes update
sudo apt-get --assume-yes install software-properties-common
sudo add-apt-repository universe
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get --assume-yes update
sudo apt-get --assume-yes install certbot
sudo certbot certonly --standalone
