today_temperature = [20.4, 22.8, 19.5, 21.7, 23.5, 24.9, 25.8]

for temperature in today_temperature:
    print(f"Temperature: {round(temperature)}°C")

for letter in "Python":
    print(letter.title()) 

# Loop through a dictionary
student_scores = {
    "Alice": 85,
    "Bob": 90,
    "Charlie": 78,
    "David": 92
}   

for student, score in student_scores.items():
    print(f"{student}: {score} points")

for student in student_scores.keys():
    print(f"{student}")

for score in student_scores.values():
    print(f"{score} points")