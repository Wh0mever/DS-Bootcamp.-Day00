# Data Science UNIX Tools (Linux Edition)

## Описание

Этот набор скриптов предназначен для автоматизации базовых этапов обработки данных с помощью стандартных UNIX-инструментов. Скрипты позволяют:
- Получать вакансии с HeadHunter API
- Преобразовывать JSON в CSV
- Сортировать, чистить и анализировать данные
- Разделять и объединять датасеты по дате

## Структура

- `hh.sh` — скачивает вакансии "data scientist" с HeadHunter API и сохраняет в hh.json
- `filter.jq` — фильтр для jq, преобразует JSON в CSV
- `json_to_csv.sh` — конвертирует hh.json в hh.csv
- `sorter.sh` — сортирует hh.csv по дате и id
- `cleaner.sh` — очищает названия позиций (оставляет только Junior/Middle/Senior или "-")
- `counter.sh` — считает уникальные позиции
- `partitioner.sh` — разбивает hh_positions.csv на файлы по датам
- `concatenator.sh` — объединяет файлы обратно в один CSV

## Как использовать

1. **Установите необходимые утилиты:**
   - `curl`, `jq`, `awk`, `sort`, `uniq`, `head`, `tail` (обычно уже есть в Linux)
   - Чтобы установить всё сразу на Ubuntu/Debian:

```sh
sudo apt update && sudo apt install -y curl jq gawk coreutils
```

2. **Запустите скрипты по порядку:**

```sh
./hh.sh
./json_to_csv.sh
./sorter.sh
./cleaner.sh
./counter.sh
./partitioner.sh
./concatenator.sh
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
- Все скрипты должны быть исполняемыми (`chmod +x *.sh`)
- Работает только в Linux/WSL/Git Bash
- Для HeadHunter API нужен интернет

---

## Автор

[![Github.com](https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png)](https://github.com/wh0mever)

**Student:** Lunchlpr (AKA WHOMEVER)  
**SKD:** Samarkand!

---

> Разработано с любовью к UNIX и автоматизации :) 