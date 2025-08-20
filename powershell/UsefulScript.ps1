# UsefulScript.ps1

# Script to display basic system information and a custom greeting 
# This script is harmless and intended for demonstration purposes

# Display a greeting
Write-Host "Hello from UsefulScript.ps1"  

# Display the current date and time
$currentDateTime = Get-Date
Write-Host "Current Date and Time: $currentDateTime"   

# Display the name of the computer
$computerName = $env:COMPUTERNAME   
Write-Host "Computer Name: $computerName"