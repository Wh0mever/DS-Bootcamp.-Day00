#!/bin/sh

# Создаем директорию для хранения разделенных файлов
mkdir -p split_by_date

# Сохраняем заголовок
head -n 1 hh_positions.csv > header.csv

# Разделяем файл по датам
tail -n +2 hh_positions.csv | awk -F'T' '{
    date=$1
    gsub(/"/, "", date)  # Удаляем кавычки из даты
    # Создаем файл для каждой даты с заголовком
    if (system("test -f split_by_date/" date ".csv") != 0) {
        system("cat header.csv > split_by_date/" date ".csv")
    }
    print $0 >> "split_by_date/" date ".csv"
}'

# Удаляем временный файл с заголовком
rm header.csv 