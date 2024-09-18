# input age value and convert it from a string to an int
age = int(input("How old are you?\n"))



# create variable and calculate decades
decades = age / 10

#print it and convert decades from float to string
print("You are " + str(decades) + " decades old.")



# create variable and calculate decades but now convert it to a whole number using //
decades = age // 10

#print it and convert decades from float to string
print("You are " + str(decades) + " decades old.")


# Get the remainder (whats left) by using the % (modulus)
years = age % 10

#print it and convert decades from float to string
print("You are " + str(decades) + " decades and " + str(years) + " years old.")
