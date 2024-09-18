import os

# Clear the screen
os.system("cls")

expenses = [10.50, 8, 5, 15, 20, 5, 3]

# Set initial value to 0
sum_expenses = 0

# Loop through all items in expenses
for x in expenses:
    sum_expenses = sum_expenses + x

# Print the value sum like this you don't have to convert it
# with an empty string in the seperator will remove the space between $ and the value
print("You spent: €", sum_expenses, sep = "")



expenses.clear



# Above can be writter easier
expenses = [10.5, 8, 5, 15, 20, 5, 3]
total = sum(expenses)

# Print the value sum like this you don't have to convert it
# with an empty string in the seperator will remove the space between $ and the value
print("You spent: €", total, sep = "")




# Do the same, but now ask for input

# Set initial value to 0
total = 0

# Create an empty list
expences = []

# Create a loop with a range of 7
for i in range(7):
    # Append each value in range of 7 to the list
    expences.append(float(input("Enter an expence:")))

# Get tot total of all expences
total = sum(expences)

# Print it
print ("Total: €" ,total, sep="")
