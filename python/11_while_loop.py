username = ''

while username !=  'admin':
    username = input('Enter username: ')
    if username == 'admin':
        print('Welcome admin!')
    else:
        print('Access denied. Please try again.')

# While Loop with Break and Continue

while True: 
    username = input('Enter username: ')
    if username == 'admin':
        print('Welcome admin!')
        break
    elif username == '':
        print('Username cannot be empty. Please try again.')
        continue
    else:
        print('Access denied. Please try again.')