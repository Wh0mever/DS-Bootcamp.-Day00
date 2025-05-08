# PowerShell скрипт для подсчета уникальных позиций

# Читаем CSV файл
$data = Import-Csv "hh_positions.csv"

# Подсчитываем уникальные значения
$counts = $data | Group-Object name | Sort-Object Count -Descending | Select-Object @{
    Name = 'name'; Expression = {$_.Name}
}, @{
    Name = 'count'; Expression = {$_.Count}
}

# Сохраняем результат
$counts | Export-Csv "hh_uniq_positions.csv" -NoTypeInformation -Encoding UTF8 