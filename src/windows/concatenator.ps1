# PowerShell скрипт для объединения файлов

# Получаем список всех CSV файлов
$files = Get-ChildItem "split_by_date\*.csv"

# Читаем и объединяем все файлы
$data = $files | ForEach-Object { Import-Csv $_ }

# Сортируем данные
$sorted = $data | Sort-Object created_at, id

# Сохраняем результат
$sorted | Export-Csv "hh_positions_concatenated.csv" -NoTypeInformation -Encoding UTF8 