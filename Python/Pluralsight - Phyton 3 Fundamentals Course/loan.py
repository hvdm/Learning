
# Get info about the loan
money_owed      = float(input("How much money do you owe in euro's\n"))                 # ex. €50.000,00 per year
annual_pct      = float(input("What is the annual percentage rate of the loan\n"))      # ex.         3% per year
payment         = float(input("How much will you pay off each month in euro's\n"))      # ex.  €1.000,00 per month
months          = int(input("How many months do you want to see the result for?\n"))    # ex.         24 months
monthly_rate    = annual_pct/100/12

for i in range(months):
    # Calcluate the interest to pay
    interrest_paid  = money_owed * monthly_rate

    # Add interest
    money_owed      = money_owed + interrest_paid
    if (money_owed - payment < 0):
        print("The last payment is ", money_owed)
        print("You paid off the loan in ", i+1, " months")
        break   # exit the loop

    # Make payment
    money_owed      = money_owed - payment

    print("Paid ", payment, " of which ", interrest_paid, " was interest", end=" ")
    print("Now i owe", money_owed)

