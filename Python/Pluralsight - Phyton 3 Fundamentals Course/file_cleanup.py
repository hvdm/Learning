import os                                                           # Make directories / list files / move files

cleanup_folder = os.getcwd() + "\CleanedUp"                         # Get current folder + Cleanup folder
if not os.path.exists(cleanup_folder):                              # Check if it exists
    os.mkdir(cleanup_folder)                                        # if not, create the folder CleanedUp

folder = os. getcwd()                                               # Get current folder
entries = os.scandir(folder)                                        # List the files in current folder

for entry in entries:                                               # Loop through all entries
    if os.path.isfile(entry):                                       
        print("File:",entry.name)                                   # print if entry is a file
    elif os.path.isdir(entry):
        print("Directory:",entry.name)                              # print if entry is a folder

folder_original = os.getcwd()                                       # Current folder where script is stored
folder_destination = os.getcwd() + "\CleanedUp"                     # Destination folder

location_original = os.path.join(folder_original, "new.txt")        # Create an absolute path for the source file
location_destination = os.path.join(folder_destination, "new.txt")  # Create an absolute path for the destination file

os.rename(location_original, location_destination)                  # move the file with the rename function


