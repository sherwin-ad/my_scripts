# List
student_grades = [9.1, 8.5, 7.3, 9.0, 8.8]
# Tuple
student_temperate = (9.1, 8.5, 7.3, 9.0, 8.8)   
# Dictionary
student_info = {"Sherwin": 9.1, "Ana": 8.5, "John": 7.3, "Maria": 9.0, "Alex": 8.8}

mysum = sum(student_grades)
mysum1 = sum(student_info.values())

length = len(student_grades)
length1 = len(student_info)    
average = mysum1 / length    

print(mysum)
print(mysum1)
print(length)
print(length1)
print("The average grade is:", average)

print(student_grades)   
print(student_info.values())    
print(student_info.keys())  