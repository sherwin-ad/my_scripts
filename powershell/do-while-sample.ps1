$count = 1

do {
    Write-Output "Count is $count"
    $count++
} while ($count -le 5)

$ip = "192.168.0.10"
$success = $false

do {
    Write-Output "Pinging $ip..."
    $success = Test-Connection -ComputerName $ip -Count 1 -Quiet
    Start-Sleep -Seconds 2
} while (-not $success)

Write-Output "$ip is online!"


$serverIp = '192.168.0.11'

do {
	Write-Host "Running check..."
    $status = Test-Connection -ComputerName $serverIp -Count 1 -Quiet
    Write-Host "$server status: $status"
    Start-Sleep -Seconds 5
} while (-not $status)