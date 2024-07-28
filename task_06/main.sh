#! /bin/bash

# директории для резервного копирования
DIRECTORIES=("MyDirectory" "MyDirectoryCopy")

# директория для хранения резервных копий
BACKUP_DIR="/backup"

# текущая дата в формате YYYY-MM-DD
DATE=$(date +"%Y-%m-%d")

for DIR in "${DIRECTORIES[@]}"; do
    # извлечение имени директории
    DIR_NAME=$(basename "$DIR")
    # создание имени файла архива
    BACKUP_FILE="$BACKUP_DIR/${DIR_NAME}_backup_${DATE}.tar.gz"
    # создание архива
    tar -czvf "$BACKUP_FILE" "$DIR"
    echo "Резервная копия $DIR создана"
done

#######################################################
# далее файл делаем исполняемым
# chmod +x main.sh

# затем в crontab добавляем строку для выполнения скрипта каждое воскресение 4 утра
# crontab -e
# 0 4 * * 0 /path/to/main.sh
