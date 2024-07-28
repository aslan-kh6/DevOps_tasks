#! /bin/bash

# обновляем список доступных пакетов
echo "Обновление списка пакетов..."
sudo apt update

# проверяем наличие доступных обновлений
UPDATES_AVAILABLE=$(apt list --upgradable 2>/dev/null | grep -c upgradable)

if [ "$UPDATES_AVAILABLE" -gt 0 ]; then
    echo "Обновления доступны. Устанавливаем обновления..."
    sudo apt upgrade -y
else
    echo "Система уже обновлена. Нет доступных обновлений."
fi

#######################################################
# далее файл делаем исполняемым
# chmod +x main.sh

# затем в crontab добавляем строку для выполнения скрипта каждое воскресение 4 утра
# crontab -e
# 0 4 * * 0 /path/to/main.sh
