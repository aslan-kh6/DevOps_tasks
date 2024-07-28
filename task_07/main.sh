#! /bin/bash

# запускаем скрипт с аргументом
# в аргументы передаем название файла: ./main.sh MyFile.txt
FILE=$1

WORD_COUNT=$(awk '{ total += NF } END { print total }' "$FILE")
echo "Количество слов в файле $FILE: $WORD_COUNT"
