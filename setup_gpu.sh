#!/bin/bash
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_7.5-18_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1404_7.5-18_amd64.deb
sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get install -y linux-image-extra-`uname -r` cuda
wget https://raw.githubusercontent.com/philipz/AWS_Nvidia_Setup/master/deviceQuery
chmod +x ./deviceQuery && sudo ./deviceQuery
echo "Finish Install Nvidia Driver & CUDA!";
#curl -sSL https://get.docker.com/ | sh
#sudo usermod -aG docker ubuntu
#echo "Finish Install Docker!";
