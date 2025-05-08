#!/bin/sh

# Сохраняем заголовок
head -n 1 hh_sorted.csv > hh_positions.csv

# Обрабатываем названия позиций
tail -n +2 hh_sorted.csv | awk -F'",' '{
    # Извлекаем название позиции (3-е поле)
    position=$3
    # Ищем ключевые слова
    if (position ~ /Junior|Middle|Senior/) {
        # Извлекаем все совпадения Junior/Middle/Senior
        if (position ~ /Junior.*Middle|Middle.*Junior/) position="Junior/Middle"
        else if (position ~ /Middle.*Senior|Senior.*Middle/) position="Middle/Senior"
        else if (position ~ /Junior.*Senior|Senior.*Junior/) position="Junior/Senior"
        else if (position ~ /Junior/) position="Junior"
        else if (position ~ /Middle/) position="Middle"
        else if (position ~ /Senior/) position="Senior"
    } else {
        position="\"-\""
    }
    # Выводим строку с обновленным названием позиции
    print $1","$2","position","$4","$5
}' >> hh_positions.csv 