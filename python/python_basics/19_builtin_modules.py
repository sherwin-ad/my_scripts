import time
import os

# This code continuously reads from a file named 'fruits.txt' every 10 seconds.
while True:
    # Check if the file exists before trying to read it  
    if os.path.exists('files/fruits.txt'):
        with open('files/fruits.txt') as file:
            print(file.read())
    else:
        # If the file does not exist, print an error message
        print("File does not exist.")
    # Wait for 10 seconds before the next read        
    time.sleep(10)