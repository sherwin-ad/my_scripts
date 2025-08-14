
param(
    $ReportType,
    $StartDate,
    $EndDate
)

$ReportPath = "C:\Reports\Attendance_2023-01-01_to_2023-01-31.csv"

# Retrieving the content of the report
Import-Csv -Path $ReportPath