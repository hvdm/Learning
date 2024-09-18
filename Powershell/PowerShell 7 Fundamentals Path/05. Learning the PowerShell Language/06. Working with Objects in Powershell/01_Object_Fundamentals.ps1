# What is an object
# A software representation of some "thing" you want to manage or work with
# An object is a black-box, we don't care how it is constructed

# Object Members
#   Property, this is something that describes the object like color, size, status
#   Method, are things that you can do to the object or have the object do, like start-service, stop-object
#   Event, when an event happens it is set to fire, windows react to the event (Windows is event driven)

# Example:

# Reference an object via a variable
$s = "foo"          
# Seperate member from the object with a period "."
$s.Length
# Use Get-Member to discover an object's properties and methods
$s | Get-Member

