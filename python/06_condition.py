def mean(value):
    if type(value) == dict:
        print("Calculating the mean of the dictionary values:", value)  
        the_mean = sum(value.values()) / len(value)
    else:    
        print("Calculating the mean of the list:", value)  
        the_mean = sum(value) / len(value)
    return the_mean

student_scores = {'Alice': 85, 'Bob': 90, 'Charlie': 95}
student_temparatures = [72, 75, 78, 80, 82]

print(mean(student_scores))  # Output: 90.0 
print(mean(student_temparatures))  # Output: 77.4
