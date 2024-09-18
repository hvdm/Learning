# Install requests first -> pip3 install requests

# Import the module
import requests

# Information about requests --> weatherapi.com --> get a free account there
# Grab the API key once logged in, for example d73af82268fa4a64a3c200007231402

# Go to API explorer and paste the API key and location and get the response
city = input("Enter the city name:")
url = "http://api.weatherapi.com/v1/current.json?key=d73af82268fa4a64a3c200007231402&q="+city+"&aqi=no"

# Response Headers
# {
#   "Transfer-Encoding": "chunked",
#   "Connection": "keep-alive",
#   "Vary": "Accept-Encoding",
#   "CDN-PullZone": "93447",
#   "CDN-Uid": "8fa3a04a-75d9-4707-8056-b7b33c8ac7fe",
#   "CDN-RequestCountryCode": "GB",
#   "Age": "0",
#   "x-weatherapi-qpm-left": "999880",
#   "CDN-ProxyVer": "1.04",
#   "CDN-RequestPullSuccess": "True",
#   "CDN-RequestPullCode": "200",
#   "CDN-CachedAt": "04/29/2024 08:36:17",
#   "CDN-EdgeStorageId": "1076",
#   "CDN-Status": "200",
#   "CDN-RequestId": "a19b418fdb8f2897829b5dd579378d63",
#   "CDN-Cache": "MISS",
#   "Cache-Control": "public, max-age=180",
#   "Content-Type": "application/json",
#   "Date": "Mon, 29 Apr 2024 08:36:17 GMT",
#   "Server": "BunnyCDN-DE1-864",
#   "Via": "1.1 varnish (Varnish/6.0)"
# }

# Response Body
# {
#     "location": {
#         "name": "Amsterdam",
#         "region": "North Holland",
#         "country": "Netherlands",
#         "lat": 52.37,
#         "lon": 4.89,
#         "tz_id": "Europe/Amsterdam",
#         "localtime_epoch": 1714379774,
#         "localtime": "2024-04-29 10:36"
#     },
#     "current": {
#         "last_updated_epoch": 1714379400,
#         "last_updated": "2024-04-29 10:30",
#         "temp_c": 13.0,
#         "temp_f": 55.4,
#         "is_day": 1,
#         "condition": {
#             "text": "Partly cloudy",
#             "icon": "//cdn.weatherapi.com/weather/64x64/day/116.png",
#             "code": 1003
#         },
#         "wind_mph": 8.1,
#         "wind_kph": 13.0,
#         "wind_degree": 180,
#         "wind_dir": "S",
#         "pressure_mb": 1019.0,
#         "pressure_in": 30.09,
#         "precip_mm": 0.0,
#         "precip_in": 0.0,
#         "humidity": 72,
#         "cloud": 25,
#         "feelslike_c": 11.6,
#         "feelslike_f": 53.0,
#         "vis_km": 10.0,
#         "vis_miles": 6.0,
#         "uv": 4.0,
#         "gust_mph": 10.6,
#         "gust_kph": 17.0
#     }
# }

# Get the request and save it in the response variable
response = requests.get(url)

# Decode JSON from the response and save it in the json variable
json = response.json()

# Print it
print(json)

# Get the locaion key and then the name key and save it in location
location = json.get("location").get("name")

# Get the current key and then the temp_c key and save it in current_temp
current_temp = json.get("current").get("temp_c")

# Get the current key, then the condition key and then the text key and save it in description
description = json.get("current").get("condition").get("text")

# Print it
print("The current temperature in", location, "is", description, "and", current_temp, "degrees")



