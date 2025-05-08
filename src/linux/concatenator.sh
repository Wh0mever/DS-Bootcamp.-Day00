#!/bin/sh

# Берем заголовок из любого файла
head -n 1 split_by_date/*.csv | head -n 1 > hh_positions_concatenated.csv

# Объединяем все файлы, пропуская заголовки
for file in split_by_date/*.csv; do
    tail -n +2 "$file"
done | sort -t',' -k2,2 -k1,1 >> hh_positions_concatenated.csv 