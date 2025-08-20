$serverIp = '192.168.0.10'

Test-Connection -ComputerName $serverIp -Count 1 -Quiet


while ($true) {
    $isOnline = Test-Connection -ComputerName $serverIp -Count 1 -Quiet
    Write-Output "Checking server status..."

    if ($isOnline) {
        Write-Output "Server is online."
        # Install patches here
        break
    }
    Start-Sleep -Seconds 1
}
