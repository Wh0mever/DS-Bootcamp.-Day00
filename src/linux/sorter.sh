#!/bin/sh

# Сохраняем заголовок
head -n 1 hh.csv > hh_sorted.csv

# Сортируем данные по created_at и id (пропускаем заголовок)
tail -n +2 hh.csv | sort -t',' -k2,2 -k1,1 >> hh_sorted.csv 