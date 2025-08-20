# Set the path to your SQL backup folder
$BackupPath = "D:\SQLBackups"

# Set the file extensions to target (e.g., .bak and .trn)
$Extensions = "*.bak", "*.trn"

# Set the age threshold (in days)
$DaysOld = 7

# Get current date minus the threshold
$CutoffDate = (Get-Date).AddDays(-$DaysOld)

# Delete files older than the cutoff date
foreach ($ext in $Extensions) {
    Get-ChildItem -Path $BackupPath -Recurse -Include $ext -File |
    Where-Object { $_.LastWriteTime -lt $CutoffDate } |
    Remove-Item -Force
}