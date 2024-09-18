# import Employee from employee.py
#    filename        classname
from employee import Employee

class Company:
    def __init__(self):
        # Create an epty list with employees
        self.employees = []

    # Add employee to the list of employees
    def add_employee(self, new_employee):
        # Append the new_employee to the list of employees
        self.employees.append(new_employee)

    # Print all employees
    def display_employees(self):
        print("Current employees:")
        for i in self.employees:
            print(i.fname, i.fname)
        print("-----------------")

    # Paying all employees
    def pay_employees(self):
        print("Paying employees:")
        for i in self.employees:
            print("Paycheck for: ", i.fname, i.fname)
            # Print it
            print("Amount: ", i.calculate_salary())
            # Print it - formated
            print(f"Amount:  ${i.calculate_salary():,.2f}")
            
        print("-----------------")

def main():
    # Set my_company object to the Company constructor
    my_company = Company()

    # Create an employee1 and fill in the firstname, lastname and salary
    employee1 = Employee("Sarah", "Hess", 50000)
    # Add employee1 to my_company
    my_company.add_employee(employee1)

    # Create an employee2 and fill in the firstname, lastname and salary
    employee2 = Employee("Lee", "Smith", 25000)
    # Add employee2 to my_company
    my_company.add_employee(employee2)

    # Create an employee3 and fill in the firstname, lastname and salary
    employee3 = Employee("Bob", "Brown", 60000)
    # Add employee3 to my_company
    my_company.add_employee(employee3)

    # Print the eployees of my_company
    my_company.display_employees()

    # Pay the eployees of my_company
    my_company.pay_employees()

# Call the main function to start the program
main()




