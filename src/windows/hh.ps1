# PowerShell скрипт для получения данных о вакансиях

# Отправляем запрос к API HeadHunter
$response = Invoke-WebRequest -Uri "https://api.hh.ru/vacancies?text=data+scientist&per_page=20" -Headers @{
    "User-Agent" = "api-test-agent"
}

# Сохраняем результат в JSON файл
$response.Content | Out-File -Encoding UTF8 "hh.json" 