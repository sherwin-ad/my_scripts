import time
import os
import pandas


# This code continuously reads from a file named 'fruits.txt' every 10 seconds.
while True:
    # Check if the file exists before trying to read it  
    if os.path.exists('files/temps_today.csv'):
        data = pandas.read_csv('files/temps_today.csv')
        print(data.mean()["st1"])
    else:
        # If the file does not exist, print an error message
        print("File does not exist.")
    # Wait for 10 seconds before the next read        
    time.sleep(10)