#az ad sp create-for-rbac --name SandhyaServicePrincipalName
#az login -u srayala@nisum.com -p Nisum123456789
sudo az login --service-principal --username "9f35ed92-ef20-4cc1-b20e-c2985f81cf20" --password "81ad7c5b-e2df-4408-9aa8-24a8989042c1" --tenant "06408ebc-5eb8-4b0d-827f-76dd3b58bc84"
#az login --service-principal -u "9f35ed92-ef20-4cc1-b20e-c2985f81cf20" --password "81ad7c5b-e2df-4408-9aa8-24a8989042c1" --tenant "06408ebc-5eb8-4b0d-827f-76dd3b58bc84"
az group create --name Nisum789 --location "centralus"
az vm create --resource-group Nisum789 --name Nisum --image UbuntuLTS --admin-username nisumuser --admin-password Nisum@123456789
az vm open-port --resource-group Nisum789 --name Nisum --port 22

sshpass -p 'Nisum@123456789'  ssh -o "StrictHostKeyChecking=no" nisumuser@104.43.252.78 << 'ENDSSH'
sudo -S <<< "Nisum@123456789" apt-get update -y
sudo -S <<< "Nisum@123456789" wget https://packages.chef.io/files/stable/chefdk/3.9.0/ubuntu/16.04/chefdk_3.9.0-1_amd64.deb
sudo -S <<< "Nisum@123456789" sudo dpkg -i chefdk_3.9.0-1_amd64.deb
sudo -S <<< "Nisum@123456789" sudo apt-get install -y rubygems ruby-dev
sudo -S <<< "Nisum@123456789" chef gem install kitchen-docker
exit
ENDSSH
