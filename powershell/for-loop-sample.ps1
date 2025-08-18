## From Clip: Demo: Mastering the For Loop
$servers = @('SERVER1', 'SERVER2', 'SERVER3', 'SERVER4', 'SERVER5')

for ($i = 0; $i -lt $servers.Length; $i++) {
    $servers[$i]
}

for ($i = 0; $i -lt $servers.Length; $i++) {
    $servers[$i] = "new $($servers[$i])"
}

$servers

for ($i = 1; $i -lt $servers.Length; $i++) {
    Write-Host "$($servers[$i]) comes after $($servers[$i-1])"
}




for ($i=1; $i -le 254; $i++) {
    $ip = "192.168.0.$i"
    if (Test-Connection -ComputerName $ip -Count 1 -Quiet) {
        Write-Output "$ip is online"
    }
}

