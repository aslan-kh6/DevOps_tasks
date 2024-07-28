#! /bin/bash

# запускаем скрипт с параметром
# в параметрах передаем ключевое слово для поиска: ./main.sh key_word
KEYWORD=$1
find . -type f -exec grep -l "$KEYWORD" {} +
