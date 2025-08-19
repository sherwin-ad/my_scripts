try {
    # Attempt something that might fail
    Get-Content "C:\nonexistentfile.txt"
}
catch {
    Write-Host "Error: $($_.Exception.Message)"
}

