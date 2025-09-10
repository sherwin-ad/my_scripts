$count = 1

do {
    Write-Output "Count is $count"
    $count++
} until ($count -gt 5)


$ip = "192.168.0.10"
$success = $false

do {
    Write-Output "Waiting for $ip to respond..."
    $success = Test-Connection -ComputerName $ip -Count 1 -Quiet
    Start-Sleep -Seconds 2
} until ($success)

Write-Output "$ip is now online!"


$serverIp = '192.168.0.10'

do {
	Write-Host "Running check..."
    $status = Test-Connection -ComputerName $serverIp -Count 1 -Quiet
    Write-Host "$server status: $status"
    Start-Sleep -Seconds 5
} until (-not $status)
