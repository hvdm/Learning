#1  Ask the user what acronym they want to look up?
#2  Open the file for reading
#3A Read each line of the file
#3B Check if the current acronum matches the user's acronym
#3C Print the definition

found = False

#1  Ask the user what acronym they want to look up?
look_up = input("What software acronym would you like to look up?\n")


#2  Open the file for reading
with open("acronyms.txt") as file:
    
    #3A - Read each line of the file
    for line in file:
  
        #3B - Check if the current acronum matches the user's acronym
        if look_up in line:
            #3C Print the definition
            print(line)
            found = True
            break
#3C Print the definition if not found        
if not found:
    print("Acronym",look_up,"does not exist")


            