def find_acronym():
    # Ask the user what acronym they want to look up?
    look_up = input("What software acronym would you like to look up?\n")

    found = False

    try:
        # Open the file for reading
        with open("acronyms.txt") as file:
            
            # Read each line of the file
            for line in file:
        
                # Check if the current acronum matches the user's acronym
                if look_up in line:
                    # Print the definition
                    print(line)
                    found = True
                    break
        # Print the definition if not found        
        if not found:
            print("Acronym",look_up,"does not exist")
    except FileNotFoundError as e:
        print("File not found")
        return

def add_acronym():
    # Ask the user what acronym they want to add
    acronym = input("What acronym do you want to add?\n")

    # Then ask the user for the definition
    definition = input("What is the definition?\n")

    # Open the file
    with open("acronyms.txt","a") as file:
        # Write the new acronym and definiction to the file
        file.write(acronym + " - " + definition + "\n")

def main():
    # Ask the user whether they want to find or add an acronym
    choice = input("Do you want to Find (F) or Add (A) an acronym?")
    if choice == "F":
        find_acronym()
    elif choice == "A":
        add_acronym()

    
main()