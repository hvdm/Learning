# Get the date, Select all it's properties, convert it to JSON
Get-Date | Select-Object * | ConvertTo-Json
# Output:
# {
#     "DisplayHint": 2,
#     "DateTime": "zaterdag 21 september 2024 15:11:28",
#     "Date": "2024-09-21T00:00:00+02:00",
#     "Day": 21,
#     "DayOfWeek": 6,
#     "DayOfYear": 265,
#     "Hour": 15,
#     "Kind": 2,
#     "Millisecond": 169,
#     "Microsecond": 215,
#     "Nanosecond": 900,
#     "Minute": 11,
#     "Month": 9,
#     "Second": 28,
#     "Ticks": 638625282881692159,
#     "TimeOfDay": {
#         "Ticks": 546881692159,
#         "Days": 0,
#         "Hours": 15,
#         "Milliseconds": 169,
#         "Microseconds": 215,
#         "Nanoseconds": 900,
#         "Minutes": 11,
#         "Seconds": 28,
#         "TotalDays": 0.6329649214803241,
#         "TotalHours": 15.191158115527777,
#         "TotalMilliseconds": 54688169.2159,
#         "TotalMicroseconds": 54688169215.9,
#         "TotalNanoseconds": 54688169215900.0,
#         "TotalMinutes": 911.4694869316667,
#         "TotalSeconds": 54688.1692159
#     },
#     "Year": 2024
# }


# Get the date, Select all it's properties, convert it to JSON as an Array
Get-Date | Select-Object * | ConvertTo-Json -AsArray
# Output:
# [
# {
#     "DisplayHint": 2,
#     "DateTime": "zaterdag 21 september 2024 15:12:49",
#     "Date": "2024-09-21T00:00:00+02:00",
#     "Day": 21,
#     "DayOfWeek": 6,
#     "DayOfYear": 265,
#     "Hour": 15,
#     "Kind": 2,
#     "Millisecond": 934,
#     "Microsecond": 101,
#     "Nanosecond": 800,
#     "Minute": 12,
#     "Month": 9,
#     "Second": 49,
#     "Ticks": 638625283699341018,
#     "TimeOfDay": {
#         "Ticks": 547699341018,
#         "Days": 0,
#         "Hours": 15,
#         "Milliseconds": 934,
#         "Microseconds": 101,
#         "Nanoseconds": 800,
#         "Minutes": 12,
#         "Seconds": 49,
#         "TotalDays": 0.6339112743263889,
#         "TotalHours": 15.213870583833334,
#         "TotalMilliseconds": 54769934.1018,
#         "TotalMicroseconds": 54769934101.8,
#         "TotalNanoseconds": 54769934101800.0,
#         "TotalMinutes": 912.83223503,
#         "TotalSeconds": 54769.9341018
#     },
#     "Year": 2024
# }
# ]



# Get the date, Select all it's properties, convert it to JSON compressed
Get-Date | Select-Object * | ConvertTo-Json -Compress
# Output:
# { "DisplayHint":2, "DateTime":"zaterdag 21 september 2024 15:14:08", "Date":"2024-09-21T00:00:00+02:00", "Day":21, "DayOfWeek":6, "DayOfYear":265, "Hour":15, "Kind":2, "Millisecond":909, "Microsecond":932, "Nanosecond":0, "Minute":14, "Month":9, "Second":8, "Ticks":638625284489099320, "TimeOfDay": { "Ticks":548489099320, "Days":0, "Hours":15, "Milliseconds":909, "Microseconds":932, "Nanoseconds":0, "Minutes":14, "Seconds":8, "TotalDays":0.6348253464351852, "TotalHours":15.235808314444444, "TotalMilliseconds":54848909.932, "TotalMicroseconds":54848909932.0, "TotalNanoseconds":54848909932000.0, "TotalMinutes":914.1484988666666, "TotalSeconds":54848.909932 }, "Year":2024 }


$date = Get-Date | Select-Object *
ConvertTo-Json -InputObject $date
# Output:
# {
#     "DisplayHint": 2,
#     "DateTime": "zaterdag 21 september 2024 15:16:02",
#     "Date": "2024-09-21T00:00:00+02:00",
#     "Day": 21,
#     "DayOfWeek": 6,
#     "DayOfYear": 265,
#     "Hour": 15,
#     "Kind": 2,
#     "Millisecond": 634,
#     "Microsecond": 439,
#     "Nanosecond": 700,
#     "Minute": 16,
#     "Month": 9,
#     "Second": 2,
#     "Ticks": 638625285626344397,
#     "TimeOfDay": {
#         "Ticks": 549626344397,
#         "Days": 0,
#         "Hours": 15,
#         "Milliseconds": 634,
#         "Microseconds": 439,
#         "Nanoseconds": 700,
#         "Minutes": 16,
#         "Seconds": 2,
#         "TotalDays": 0.6361416023113426,
#         "TotalHours": 15.267398455472222,
#         "TotalMilliseconds": 54962634.4397,
#         "TotalMicroseconds": 54962634439.7,
#         "TotalNanoseconds": 54962634439700.0,
#         "TotalMinutes": 916.0439073283334,
#         "TotalSeconds": 54962.6344397
#     },
#     "Year": 2024
# }

Get-Process g* | ConvertTo-Json
# Output:
# {
#     "SafeHandle": {
#         "IsInvalid": false,
#         "IsClosed": false
#     },
#     "Handle": {
#         "value": 7956
#     },
#     "BasePriority": 8,
#     "ExitCode": null,
#     "HasExited": false,
#     "StartTime": "2024-09-18T08:50:45.1859445+02:00",
#     "ExitTime": null,
#     "Id": 19404,
#     "MachineName": ".",
#     "MaxWorkingSet": {
#         "value": 1413120
#     },
#     "MinWorkingSet": {
#         "value": 204800
#     },
#     "Modules": [
#     {
#         "ModuleName": "Greenshot.exe",
#     .........

# Get all processes started witg "g", convert it to JSON and save it ti a file
Get-Process g* | ConvertTo-Json | Out-File "$((Get-Location).Path)\procs.json"
# Get the contents of the file
Get-Content "$((Get-Location).Path)\procs.json"
# Output:
# {
#   "SafeHandle": {
#     "IsInvalid": false,
#     "IsClosed": false
#   },
#   "Handle": {
#     "value": 5840
#   },
#   "BasePriority": 8,
#   "ExitCode": null,
#   "HasExited": false,
#   "StartTime": "2024-09-18T08:50:45.1859445+02:00",
#   .......


$ProcessData = Get-Content "$((Get-Location).Path)\procs.json" | ConvertFrom-Json
$ProcessData