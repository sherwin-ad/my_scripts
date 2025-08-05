with open("files/vegetables.txt", "a+") as file:
    file.write("\nOkra")
    file.seek(0)  # Move the cursor to the beginning of the file
    content = file.read()

print(content)
