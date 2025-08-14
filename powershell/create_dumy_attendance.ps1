# Create dummy attendance data
$attendees = @()
$attendees += [PSCustomObject]@{
    Name = "Jane Smith"
    Date = "2023-01-15"
}
$attendees += [PSCustomObject]@{
    Name = "John Doe"
    Date = "2023-01-17"
}

# Save data to CSV file 
$attendees | Export-Csv -Path "C:\Reports\Attendance_2023-01-01_to_2023-01-31.csv" -NoTypeInformation
