# PowerShell скрипт для разделения данных по датам

# Создаем директорию для файлов
New-Item -ItemType Directory -Force -Path "split_by_date" | Out-Null

# Читаем CSV файл
$data = Import-Csv "hh_positions.csv"

# Группируем по дате (берем только дату из created_at)
$data | Group-Object { ($_.created_at -split "T")[0] } | ForEach-Object {
    $date = $_.Name
    $_.Group | Export-Csv "split_by_date\$date.csv" -NoTypeInformation -Encoding UTF8
} 