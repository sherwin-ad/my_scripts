student_temperatures = [23, 25, 22, 24, 26, 27, 28]
my_string = "Hello, World!" 
my_temperatures = ["hello", 25, 22, 24, 26, 27, 28]

# Accessing elements using indexing
print(student_temperatures[0])  # First element: 23
print(student_temperatures[3])  # Fourth element: 24
print(student_temperatures[-1]) # Last element: 28

# Modifying Elements
student_temperatures[2] = 30  # Change the third element to 30
print(student_temperatures)   # Output: [23, 25, 30, 24, 26, 27, 28]

# Slicing
print(student_temperatures[1:4])  # Elements from index 1 to 3: [25, 22, 24]
print(student_temperatures[:3])   # First three elements: [23, 25, 22]
print(student_temperatures[4:])   # Elements from index 4 to the end: [26, 27, 28]

print(my_string[0:5])  # First five characters: 'Hello'
print(my_string[7:12]) # Characters from index 7 to 11: 'World' 
print(my_string[-1])   # Last element: '!' 

print(my_temperatures [0] [2])  # Accessing the third character of the first element: 'l'   
print(my_temperatures[1:4])  # Elements from index 1 to 3: [25, 22, 24] 
