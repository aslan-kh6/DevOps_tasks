#! /bin/bash

# запускаем скрипт с параметром
# в параметры передаем число, длину пароля: ./main.sh 12
PASSWORD_LENGTH=$1
OUTPUT_FILE="pswd.txt"

# Генерация пароля с использованием /dev/urandom
PASSWORD=$(tr -dc 'A-Za-z0-9_@!' < /dev/urandom | head -c "$PASSWORD_LENGTH")
echo "$PASSWORD" >> "$OUTPUT_FILE"
echo "Пароль сохранен в $OUTPUT_FILE"
