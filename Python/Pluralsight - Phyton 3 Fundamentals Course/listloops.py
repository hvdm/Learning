# Create an empty list
acronyms = []
# Add an item
acronyms.append("LOL")
# Add another item
acronyms.append("IDK")
#print it
print(acronyms)

# Clear the list
acronyms.clear

# Create a list with a few items
acronyms = ["LOL", "IDK", "SMH"]
# Add an item
acronyms.append("BFN")
# Add another item
acronyms.append("IMHO")
#print it
print(acronyms)



# ['LOL', 'IDK', 'SMH', 'BFN', 'IMHO']
#   0      1      2      3      4
# Deleting an item by index number
del acronyms[3] # will remove BFN

#print it
print(acronyms)

# Deleting an item by value
acronyms.remove("IDK") # will remove IDK

#print it
print(acronyms)


word = "LOL"
# Check if a acronym is in the list
if word in acronyms:
    print(word + " is in the list")
else:
    print(word + " is not in the list")

word = "IDK"
# Check if a acronym is in the list
if word in acronyms:
    print(word + " is in the list")
else:
    print(word + " is not in the list")



# Print all items in the list
for acronym in acronyms:
    print(acronym)

