# PowerShell скрипт для обработки названий позиций

# Читаем CSV файл
$data = Import-Csv "hh_sorted.csv"

# Обрабатываем названия позиций
$data | ForEach-Object {
    $position = $_.name
    if ($position -match "Junior|Middle|Senior") {
        if ($position -match "Junior.*Middle|Middle.*Junior") { $_.name = "Junior/Middle" }
        elseif ($position -match "Middle.*Senior|Senior.*Middle") { $_.name = "Middle/Senior" }
        elseif ($position -match "Junior.*Senior|Senior.*Junior") { $_.name = "Junior/Senior" }
        elseif ($position -match "Junior") { $_.name = "Junior" }
        elseif ($position -match "Middle") { $_.name = "Middle" }
        elseif ($position -match "Senior") { $_.name = "Senior" }
    } else {
        $_.name = "-"
    }
    $_
} | Export-Csv "hh_positions.csv" -NoTypeInformation -Encoding UTF8 