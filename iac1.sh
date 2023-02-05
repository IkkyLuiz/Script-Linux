#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd jason -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd marcia -m -s /bin/bash -p $(openssl passwd -crypt Senha456) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha789) -G GRP_ADM

useradd emily -m -s /bin/bash -p $(openssl passwd -crypt Senha987) -G GRP_VEN
useradd fabiana -m -s /bin/bash -p $(openssl passwd -crypt Senha654) -G GRP_VEN
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha321) -G GRP_VEN

useradd joselinda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amabile -m -s /bin/bash -p $(openssl passwd -crypt Senha456) -G GRP_SEC
useradd roger -m -s /bin/bash -p $(openssl passwd -crypt Senha789) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."
