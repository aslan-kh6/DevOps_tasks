#! /bin/bash

file_count=0
dir_count=0

for item in *; do
    if [ -f "$item" ]; then
        # если это файл, увеличиваем счетчик файлов
        ((file_count++))
    elif [ -d "$item" ]; then
        # если это директория, увеличиваем счетчик директорий
        ((dir_count++))
    fi
done

echo "Кол-во файлов: $file_count"
echo "Кол-во директорий: $dir_count"
