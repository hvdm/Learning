# Creating the base class
class Robot:
    # Constructor
    def __init__(self, name):
        self.name = name
        self.position = [0,0]
        print("My name is", self.name)
    
    # Walk method
    def walk(self,x):
        self.position[0] = self.position[0] + x
        print("New posistion:", self.position)

    # Eat method
    def eat(self):
        print("I'm hungry")



# Creating the child class
class Robot_Dog(Robot):
    # if you don't call __init__ it will call that from the base class
    
    # make_noise function can only be called from the Robot_Dog class, not from Robot
    def make_noise(self):
        print("Woof Woof")

    # Eat method, this also exists in the base class, so it will be overridden
    def eat(self):
        # By using super() it will not override the base class but call the baseclass first before running the next code from the child class
        super().eat()
        print("I love bacon")




# Main program
def main():
    my_robot_dog = Robot_Dog("Bud")
    my_robot_dog.walk(10)
    my_robot_dog.make_noise()
    my_robot_dog.eat()


    











main()