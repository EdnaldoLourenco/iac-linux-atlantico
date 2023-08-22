#!/bin/bash

echo "Criando diretórios"

sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

echo "Criando grupos..."

sudo groupadd GRP_ADM

sudo groupadd GRP_VEN

sudo groupadd GRP_SEC

echo "Criando usuários..."

sudo useradd carlos -c "Carlos da Silva" -s /bin/bash -p$(openssl passwd Senha123) -G GRP_ADM

sudo useradd maria -c "Maria dos Prazeres" -s /bin/bash -p$(openssl passwd Senha123) -G GRP_ADM

sudo useradd joao -c "João Gomes" -s /bin/bash -p$(openssl passwd Senha123) -G GRP_ADM

sudo useradd debora -c "Debora Cristina" -s /bin/bash -p$(openssl passwd Senha123) -G GRP_VEN

sudo useradd sebastiana -c "Sebastiana Santos" -s /bin/bash -p$(openssl passwd Senha123) -G GRP_VEN

sudo useradd roberto -c "Roberto Carlos" -s /bin/bash -p$(openssl passwd Senha123) -G GRP_VEN

sudo useradd josefina -c "Josefina Francisca" -s /bin/bash -p$(openssl passwd Senha123) -G GRP_SEC

sudo useradd amanda -c "Amanda Silva" -s /bin/bash -p$(openssl passwd Senha123) -G GRP_SEC

sudo useradd rogerio -c "Rogerio Martins" -s /bin/bash -p$(openssl passwd Senha123) -G GRP_SEC

echo "Permissões..."

sudo chmod 777 /publico

sudo chown root:GRP_ADM /adm

sudo chmod 770 /adm

sudo chown root:GRP_VEN /ven

sudo chmod 770 /ven

sudo chown root:GRP_SEC /sec

sudo chmod 770 /sec
