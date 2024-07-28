#! /bin/bash

# Создаем архив с именем archive.tar.gz из директории MyDirectory и MyDirectoryCopy
tar -czvf archive.tar.gz MyDirectory MyDirectoryCopy

# Распаковываем архив archive.tar.gz в текущую директорию
tar -xzvf archive.tar.gz
