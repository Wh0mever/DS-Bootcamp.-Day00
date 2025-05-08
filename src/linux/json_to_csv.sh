#!/bin/sh

# Преобразуем JSON в CSV используя наш фильтр
jq -r -f filter.jq hh.json > hh.csv 