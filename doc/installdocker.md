the doc for centos 7
- https://docs.docker.com/
- https://docs.docker.com/install/linux/docker-ce/centos/
```

 sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2


sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install docker-ce docker-ce-cli containerd.io -y

```
```
systemctl start docker

systemctl enable docker
```
```
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
```

virtualbox share
```
sudo yum install "kernel-devel-uname-r == $(uname -r)" 
yum install gcc kernel-devel kernel-headers dkms make bzip2 -y

mkdir /media/cdrom
 sudo mount -o loop VBoxGuestAdditions.iso /media/cdrom/
/media/cdrom/VBoxLinuxAdditions.run 
sudo mount -t vboxsf -o uid=1000,gid=1000  www /media/sf_www 
```