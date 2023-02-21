# #!/bin/sh

# ###########################
# # Docker SETUP
# ###########################
sudo apt-get update
sudo apt-get install -y docker.io

echo "Docker Setup complete"

# ###########################
# # NodeJS setup
# ###########################
sudo apt-get update
sudo apt-get install -y nodejs
sudo apt-get install -y npm
echo "NodeJS setup Complete"

###########################
# Start Docker
###########################
chmod 777 ../API/DockerTimeout.sh
chmod 777 ../API/Payload/script.sh
chmod 777 ../API/Payload/javaRunner.sh
chmod 777 UpdateDocker.sh

sudo systemctl restart docker
sudo docker build -t 'virtual_machine' - < Dockerfile
./UpdateDocker.sh
