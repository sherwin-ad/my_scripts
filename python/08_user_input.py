def weather_condition(temperature):
    if temperature  > 7:
        return "It's Warm!"
    else:
        return "It's Cold!"

user_input = float(input("Enter the temperature: "))
print(weather_condition(user_input))
print(type(user_input))  # Output: <class 'float'>

