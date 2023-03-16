#!/bin/bash

read -p "Masukkan nama file yang berisi list domain: " file

while read -r domain; do
  ip=$(ping -c 1 $domain | grep "PING" | awk '{print $3}' | sed 's/[()]//g')
  echo "Alamat IP dari $domain adalah: $ip"
done < "$file"
