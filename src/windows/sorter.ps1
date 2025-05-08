# PowerShell скрипт для сортировки CSV файла

# Читаем CSV файл
$data = Import-Csv "hh.csv"

# Сортируем данные по created_at и id
$sorted = $data | Sort-Object created_at, id

# Экспортируем отсортированные данные
$sorted | Export-Csv "hh_sorted.csv" -NoTypeInformation -Encoding UTF8 