"""
Script   : Return if a number is a palindrome or not
           A palindrome is a word, number, phrase, or other sequence of symbols that 
           reads the same backwards as forwards
Author   : clcoding.com
Modified : H. van der Mark
Email    : Herby@vandermark.org
Link     : https://github.com/hvdm/Learning/tree/main/Examples/Python%20and%20PowerShell
"""

# Read the string from the input
st = input("Please enter a string: ")

# [::-1] means "slice the entire string or sequence in reverse order."
if st == st[::-1]:
    # if str is "str in reversed order" then it is a palindrome
    print(f"{st} is a palindrome")
else:
    # if str is "str in reversed order" then it is not a palindrome
    print(f"{st} is not a palindrome")
