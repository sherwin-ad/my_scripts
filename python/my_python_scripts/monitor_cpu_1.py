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


# System-wide CPU utilization over 1 second
print("CPU Utilization")
cpu_usage = psutil.cpu_percent(interval=1)
print(f"System-wide CPU Usage: {cpu_usage}%")

# Per-CPU utilization over 1 second
per_cpu_usage = psutil.cpu_percent(interval=1, percpu=True)
print(f"Per-CPU Usage: {per_cpu_usage}")

cpu_times = psutil.cpu_times()
print(f"CPU Times: {cpu_times}")

# Accessing individual components:
print(f"User Time: {cpu_times.user}")
print(f"System Time: {cpu_times.system}")
print(f"Idle Time: {cpu_times.idle}")

cpu_stats = psutil.cpu_stats()
print(f"CPU Stats: {cpu_stats}")

print("CPU usage (%):", psutil.cpu_percent(interval=1))

ram = psutil.virtual_memory()
print("RAM usage (%):", ram.percent)
print("RAM used (GB):", round(ram.used / 1e9, 2))




