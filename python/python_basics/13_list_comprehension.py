temps = [221, 222, 223, 224, 225, 226, 227, 228, 229, 230]
# List comprehension to convert Fahrenheit to Celsius

new_temps = []
for temp in temps:
    new_temps.append(temp / 10)

print(new_temps)
# Using list comprehension

# Another way to do the same thing 

new_temps1 = [temp / 10 for temp in temps]  
print(new_temps1)      

# List comprehension with if condition
temps1 = [221, 222, 223, 224, 225, 226, 227, 228, -233, 230]
new_temps2 = [temp / 10 for temp in temps1 if temp != -233]
print(new_temps2)

# List comprehension with if-else condition
new_temps3 = [temp / 10 if temp != -233 else 0 for temp in temps1]
print(new_temps3)
