#!/bin/sh

# Создаем заголовок для файла статистики
echo '"name","count"' > hh_uniq_positions.csv

# Подсчитываем уникальные значения и сортируем по убыванию
tail -n +2 hh_positions.csv | awk -F'",' '{print $3}' | sort | uniq -c | sort -rn | \
    awk '{print "\""$2"\","$1}' >> hh_uniq_positions.csv 