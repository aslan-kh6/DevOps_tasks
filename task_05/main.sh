#! /bin/bash

# запускаем скрипт с параметром
# в параметрах передаем название файла: ./main.sh MyFile.txt
FILE=$1
awk '{line[NR]=$0} END {for (i=NR; i>0; i--) print line[i]}' "$FILE"
