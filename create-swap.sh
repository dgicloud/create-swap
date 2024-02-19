#!/bin/bash

sudo fallocate -l 1G /swapfile
    sleep 5

sudo dd if=/dev/zero of=/swapfile bs=1024 count=1048576 && sudo chmod 600 /swapfile
    sleep 5

sudo mkswap /swapfile
    sudo swapon /swapfile
        sleep 5

echo "criando backup do /etc/fstab"
    cp /etc/fstab /etc/bck-fstab
        sleep 3
        
echo "Backup criado com sucesso"
    sleep 3

echo "Criando montagem do Swap em fstab para que ele monte sempre que inicie o sistema"
    echo /swapfile swap swap defaults 0 0 >> /etc/fstab