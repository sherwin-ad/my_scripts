$serverIp = '192.168.0.11'

while (-not (Test-Connection -ComputerName $serverIp -Count 1 -Quiet)) {
    Write-Output "Server is offline. Checking again in 5 seconds..."
    Start-Sleep -Seconds 1
}

Write-Output "Server is online. Proceeding with the next steps."
# Install patches here
