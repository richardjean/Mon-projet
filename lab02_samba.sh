#!/bin/bash

#----------------------
# Fait par Richard Jean
# Cours C32
# TEST GIT !!!
# 3 décembre 2021
#----------------------
clear

groupadd grpsmb
groupadd grpsmb1
groupadd grpsmb2

for i in 1 2 3 4
do
  useradd -m -s /bin/bash -g grpsmb samba$i 
done

for i in 5 6 7
do 
  useradd -m -s /bin/bash -g grpsmb1 samba$i
done

for i in 8 9 10
do
  useradd -m -s /bin/bash -g grpsmb2 samba$i
done

for ((i=1;i<=10;i++))
do
  echo -e "123\n123" | passwd samba$i
  echo -e "123\n123" | smbpasswd -s -a samba$i
done

for ((i=1;i<=7;i++))
do
  mkdir -p /tmp/samba/cas$i
done
