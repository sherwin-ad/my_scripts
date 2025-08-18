#region Standardizing a Single Name
$name = "Alice Smith"

## convert all to lowercase
$name.ToLower()

## replace smith (case sensitive) to Smythe. doesn't work
$name.Replace("smith", "Smythe")

# works
$name.Replace("Smith", "Smythe")

## using the replace operator to replace text with regex
## does not remove Smith
$name -replace "^Smith", ""

## removes Smith
$name -replace "Smith", ""

$name.ToUpper()

## combine actions together on a single line but limit this because it sometimes hurts readabilty
$name.ToLower().Replace("smith", "Smythe").ToUpper()

#region Introducing a Loop for Multiple Names

$employeeNames = @("Alice Smith", "bob JOHNSON", "CARLA Ray")

foreach ($name in $employeeNames) {
    $standardName = $name.ToLower().Replace("smith", "Smythe").ToUpper()
    Write-Host "Original: $name, Standardized: $standardName"
}
