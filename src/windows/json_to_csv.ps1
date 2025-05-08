# PowerShell скрипт для конвертации JSON в CSV

# Читаем JSON файл
$json = Get-Content "hh.json" | ConvertFrom-Json

# Создаем CSV файл с заголовками
"id,created_at,name,has_test,alternate_url" | Out-File "hh.csv" -Encoding UTF8

# Добавляем данные
$json.items | ForEach-Object {
    "$($_.id),$($_.created_at),$($_.name),$($_.has_test),$($_.alternate_url)" | 
    Out-File "hh.csv" -Append -Encoding UTF8
} 