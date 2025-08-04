import datetime

# Get the current date and time
current_datetime = datetime.datetime.now()
print("Current Date and Time:", current_datetime)

# Get today's date
today_date = datetime.date.today()
print("Today's Date:", today_date)

# Create a specific date
specific_date = datetime.date(2025, 7, 30)
print("Specific Date:", specific_date)

# Calculate the difference between two dates
date1 = datetime.date(2025, 7, 30)
date2 = datetime.date(2025, 8, 15)
difference = date2 - date1
print("Difference between dates:", difference.days, "days")

# Format the date
formatted_date = current_datetime.strftime("%Y-%m-%d %H:%M:%S")
print("Formatted Date and Time:", formatted_date)

mytext = "My number is"
mynumber = 42

print(mytext, mynumber)

print(24 * 7)