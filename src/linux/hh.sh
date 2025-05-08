#!/bin/sh

# Получаем данные о первых 20 вакансиях data scientist через API HeadHunter
curl -H "User-Agent: api-test-agent" \
     "https://api.hh.ru/vacancies?text=data+scientist&per_page=20" \
     | jq '.' > hh.json 