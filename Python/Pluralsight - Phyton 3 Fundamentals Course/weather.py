# Comparators:
# <     Less than 
# <=    Less than or equal to
# ==    Equal
# >=    Greater than or equal to
# >     Greater than
# !=    Not equal to

# Get the input temperature
temperature = int(input("What's the temperature (F):\n"))

# Set forecast to rainy
forecast = "rainy"

# Set raining to true
raining = True

if temperature > 80:
    # Print message if above 80
    print("It's to hot, stay inside")
elif temperature < 60:
    # else print message if below 60
    print("It's to cold, stay inside")    
else:
    # else print message if between 60 and 80
    print("Enjoy the outside")


if temperature < 80 and forecast != "rainy":
    # else print message if below 80 AND it's not rainy
    print("Go ouside")
else:
    print("Stay inside")


if raining:
    print("It's raining, stay inside")