import psutil
import time

# CPU Count
logical_cpus = psutil.cpu_count(logical=True)
physical_cores = psutil.cpu_count(logical=False)
print("CPU Count")
print(f"Logical CPUs: {logical_cpus}")
print(f"Physical Cores: {physical_cores}")

# CPU Usage
cpu_percent = psutil.cpu_percent(interval=1)
print(f"CPU Usage: {cpu_percent}%")

# RAM Usage
mem = psutil.virtual_memory()
print(f"RAM Total: {mem.total / (1024 ** 3):.2f} GB")
print(f"RAM Used: {mem.used / (1024 ** 3):.2f} GB")
print(f"RAM Usage: {mem.percent}%")

# Storage Usage (Root Partition)
disk = psutil.disk_usage('/')
print(f"Disk Total: {disk.total / (1024 ** 3):.2f} GB")
print(f"Disk Used: {disk.used / (1024 ** 3):.2f} GB")
print(f"Disk Usage: {disk.percent}%")