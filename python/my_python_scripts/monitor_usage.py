import psutil
import time

while True:
    time.sleep(10)  # Sleep for 1 second to avoid busy waiting
    # Number of logical and physical cores
    print("Logical cores:", psutil.cpu_count(logical=True))
    print("Physical cores:", psutil.cpu_count(logical=False))

    # CPU usage percentage (system-wide)
    print("CPU usage percent:", psutil.cpu_percent(interval=1))

    # Per-core CPU usage
    print("Per-core CPU usage:", psutil.cpu_percent(interval=1, percpu=True))

    # CPU times
    print("CPU times:", psutil.cpu_times())

    # CPU frequency
    print("CPU frequency:", psutil.cpu_freq())

    # Temperatures (may not be available on all systems)
    try:
        temps = psutil.sensors_temperatures()
        print("Temperatures:", temps)
    except AttributeError:
        print("Temperature sensors not supported on this system.")

    # Fan speeds (may not be available on all systems)
    try:
        fans = psutil.sensors_fans()
        print("Fans:", fans)
    except AttributeError:
        print("Fan sensors not supported on this system.")

    # Battery status
    battery = psutil.sensors_battery()
    print("Battery:", battery)

    # Memory usage
    mem = psutil.virtual_memory()
    print("Memory usage:")
    print(f"  Total: {mem.total / (1024 ** 3):.2f} GB")
    print(f"  Available: {mem.available / (1024 ** 3):.2f} GB")
    print(f"  Used: {mem.used / (1024 ** 3):.2f} GB")
    print(f"  Percentage: {mem.percent}%")

    # Swap memory
    swap = psutil.swap_memory()
    print("Swap memory:")
    print(f"  Total: {swap.total / (1024 ** 3):.2f} GB")
    print(f"  Used: {swap.used / (1024 ** 3):.2f} GB")
    print(f"  Free: {swap.free / (1024 ** 3):.2f} GB")
    print(f"  Percentage: {swap.percent}%")


    # Disk usage for each partition
    print("Disk usage:")
    for part in psutil.disk_partitions():
        try:
            usage = psutil.disk_usage(part.mountpoint)
            print(f"  Device: {part.device}")
            print(f"    Mountpoint: {part.mountpoint}")
            print(f"    File system type: {part.fstype}")
            print(f"    Total: {usage.total / (1024 ** 3):.2f} GB")
            print(f"    Used: {usage.used / (1024 ** 3):.2f} GB")
            print(f"    Free: {usage.free / (1024 ** 3):.2f} GB")
            print(f"    Percentage: {usage.percent}%")
        except PermissionError:
            print(f"  Device: {part.device} - Permission Denied")