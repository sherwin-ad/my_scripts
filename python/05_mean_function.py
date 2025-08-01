def mean(mylist):
    print("Calculating the mean of the list:", mylist)  
    the_mean = sum(mylist) / len(mylist)
    return the_mean

print(mean([1, 2, 3, 4, 5]))  # Output: 3.0
print(mean([10, 20, 30, 40, 50]))  # Output: 30.0   