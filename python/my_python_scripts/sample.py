import psutil

print(psutil.cpu_times()) #

for x in range(3):
    print(psutil.cpu_percent(interval=1))

for x in range(3):
    print(psutil.cpu_percent(interval=1, percpu=True))


print(psutil.sensors_battery())    
print(psutil.sensors_battery().percent)