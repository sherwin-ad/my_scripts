# System Health Check Script

Write-Host "=== System Health Check ===`n"

# 1. CPU Usage
$cpu = Get-CimInstance Win32_Processor | Measure-Object -Property LoadPercentage -Average
Write-Host "CPU Load: $($cpu.Average)%"

# 2. Memory Usage
$mem = Get-CimInstance Win32_OperatingSystem
$totalMem = [math]::round($mem.TotalVisibleMemorySize / 1MB, 2)
$freeMem = [math]::round($mem.FreePhysicalMemory / 1MB, 2)
$usedMem = $totalMem - $freeMem
Write-Host "Memory Usage: $usedMem GB / $totalMem GB"

# 3. Disk Space
$disks = Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3"
foreach ($disk in $disks) {
    $size = [math]::round($disk.Size / 1GB, 2)
    $free = [math]::round($disk.FreeSpace / 1GB, 2)
    $used = $size - $free
    Write-Host "Drive $($disk.DeviceID): $used GB used / $size GB total"
}

# 4. Network Status
$netAdapters = Get-NetAdapter | Where-Object { $_.Status -eq "Up" }
foreach ($adapter in $netAdapters) {
    Write-Host "Network Adapter: $($adapter.Name) - Status: $($adapter.Status)"
}

# 5. System Uptime
$uptime = (Get-CimInstance Win32_OperatingSystem).LastBootUpTime
$uptimeSpan = (Get-Date) - $uptime
Write-Host "System Uptime: $([math]::Round($uptimeSpan.TotalHours, 2)) hours"

Write-Host "`n=== Health Check Complete ==="