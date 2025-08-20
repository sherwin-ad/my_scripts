user_input = input("Enter your name: ")
message = "Hello %s!" % user_input
message1 = f"Hello {user_input}!"
print(message)
print(message1)

# Multiple variables
name = input("Enter your name: ")
surname = input("Enter your surname: ")
when = "today"
message2 = "Hello %s %s!" % (name, surname)
message3 = f"Hello {name} {surname}! Whats up {when}?"
print(message2)
print(message3) 