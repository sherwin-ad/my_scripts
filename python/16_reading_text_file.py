myfile = open("fruits.txt")
# print(myfile.read())

# Read the file "fruits.txt" and print its content 2 times 
content = myfile.read()
print(content)
print(content)


# Read the file "fruits.txt" and print its content 3 times 
content2 = myfile.read()
for i in range(3):
    print(content)
    
myfile1 = open("fruits.txt")
# Read the file "fruits.txt" and print its content once more
content3 = myfile1.read()
myfile1.close()

print(content3)

# with statement to read the file "fruits.txt" and print its content 
with open("fruits.txt") as myfile2:
    content4 = myfile2.read()
print(content4)


# Read the file "fruits.txt" using a with statement and print its content
# using a different file name "files/fruits.txt"
with open("files/fruits.txt") as myfile3:
    content5 = myfile3.read()
    print(content5)           

