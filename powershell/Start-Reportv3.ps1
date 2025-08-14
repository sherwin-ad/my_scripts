
param(
    $ReportType,
    $StartDate,
    $EndDate
)

$ReportPath = "C:\Reports\$ReportType`_$StartDate`_to_$EndDate.csv"

# Retrieving the content of the report
Import-Csv -Path $ReportPath