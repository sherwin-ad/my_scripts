import pyautogui as pag
import random
import time

while True:
    # Generate random coordinates within the screen size
    x = random.randint(0, pag.size().width - 1)
    y = random.randint(0, pag.size().height - 1)    
    # Move the mouse to the random coordinates
    pag.moveTo(x, y,0.5)
    print(f"Moved mouse to: ({x}, {y})")
    time.sleep(2)  # Wait for 1 second before the next move
    
    