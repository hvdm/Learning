# Install requests first -> pip3 install requests

# Information about requests --> https://requests.readthedocs.io/en/latest/
# Gather info about who is in space --> open-notify.org --> http://api.open-notify.org/astros.json

# Import modules
import requests

# Get the request and save it in the response variable
response = requests.get("http://api.open-notify.org/astros.json")

# Decode JSON from the response and save it in the json variable
json = response.json()

# Print it
print(json)
# output: 
# {
#     'message': 'success', 
#     'people' : [
#                     {'name': 'Jasmin Moghbeli', 'craft': 'ISS'}, 
#                     {'name': 'Andreas Mogensen', 'craft': 'ISS'}, 
#                     {'name': 'Satoshi Furukawa', 'craft': 'ISS'}, 
#                     {'name': 'Konstantin Borisov', 'craft': 'ISS'}, 
#                     {'name': 'Oleg Kononenko', 'craft': 'ISS'}, 
#                     {'name': 'Nikolai Chub', 'craft': 'ISS'}, 
#                     {'name': "Loral O'Hara", 'craft': 'ISS'}
               # ], 
#     'number': 7
# }

# Get a list of people by using the people key
for person in json["people"]:
    print(person)

# Output:
# {'name': 'Jasmin Moghbeli', 'craft': 'ISS'}
# {'name': 'Andreas Mogensen', 'craft': 'ISS'}
# {'name': 'Satoshi Furukawa', 'craft': 'ISS'}
# {'name': 'Konstantin Borisov', 'craft': 'ISS'}
# {'name': 'Oleg Kononenko', 'craft': 'ISS'}
# {'name': 'Nikolai Chub', 'craft': 'ISS'}
# {'name': "Loral O'Hara", 'craft': 'ISS'}

# Get the name from a list of people by using the people key
for person in json["people"]:
    print(person["name"])


