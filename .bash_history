cd
docker-compose --version
apt install docker-compose
docker-compose --version
mkdir grafana-prometheus-monitoring
cd grafana-prometheus-monitoring
sudo usermod -aG docker $USER
newgrp docker
sudo ufw allow 9090/tcp
sudo ufw allow 9100/tcp
sudo ufw allow 3000/tcp
sudo ufw reload
sudo apt update && sudo apt install -y curl vim htop
vim docker-compose.yml
vim prometheus.yml
# Pull and start containers
docker-compose up -d
# Verify all services are running
docker ps
