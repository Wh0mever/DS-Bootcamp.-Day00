# Data Science Tools (Windows Edition)

## Описание

Этот набор PowerShell-скриптов автоматизирует базовые этапы обработки данных для задач data science. Скрипты позволяют:
- Получать вакансии с HeadHunter API
- Преобразовывать JSON в CSV
- Сортировать, чистить и анализировать данные
- Разделять и объединять датасеты по дате

## Структура

- `hh.ps1` — скачивает вакансии "data scientist" с HeadHunter API и сохраняет в hh.json
- `json_to_csv.ps1` — конвертирует hh.json в hh.csv
- `sorter.ps1` — сортирует hh.csv по дате и id
- `cleaner.ps1` — очищает названия позиций (оставляет только Junior/Middle/Senior или "-")
- `counter.ps1` — считает уникальные позиции
- `partitioner.ps1` — разбивает hh_positions.csv на файлы по датам
- `concatenator.ps1` — объединяет файлы обратно в один CSV

## Как использовать

1. **Откройте PowerShell в этой директории**
2. **Запустите скрипты по порядку:**

```powershell
./hh.ps1
./json_to_csv.ps1
./sorter.ps1
./cleaner.ps1
./counter.ps1
./partitioner.ps1
./concatenator.ps1
```

3. **Результаты:**
- `hh.json` — исходные данные
- `hh.csv` — преобразованный CSV
- `hh_sorted.csv` — отсортированный CSV
- `hh_positions.csv` — очищенные позиции
- `hh_uniq_positions.csv` — статистика по позициям
- `split_by_date/` — папка с файлами по датам
- `hh_positions_concatenated.csv` — объединённый итоговый файл

## Примечания
- Требуется PowerShell 5+ (Windows 10/11)
- Для HeadHunter API нужен интернет
- Все скрипты можно запускать по отдельности

---

## Автор

[![Github.com](https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png)](https://github.com/wh0mever)

**Student:** Lunchlpr (AKA WHOMEVER)  
**SKD:** Samarkand!

---

> Разработано с любовью к автоматизации и PowerShell :) 