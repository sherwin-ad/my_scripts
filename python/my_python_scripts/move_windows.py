# Sample usage of pygetwindow
import pygetwindow as gw
import time
import random

# List all open window titles
titles = [title for title in gw.getAllTitles() if title.strip()]
print("Open window titles:")
for title in titles:
    print(title)

if titles:
    # Randomly select a window title
    random_title = random.choice(titles)
    windows = gw.getWindowsWithTitle(random_title)
    if windows:
        windows[0].activate()
        print(f"Randomly activated window: {random_title}")
        time.sleep(2)
    else:
        print(f"Window titled '{random_title}' not found.")
else:
    print("No windows found.")

    