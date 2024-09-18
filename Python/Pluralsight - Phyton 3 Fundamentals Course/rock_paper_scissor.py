#Info
# A classic two-person game. 
# Players start each round by saying, “rock, paper, scissors, shoot!” 
# On “shoot,” each player holds out their:
#  fist for rock,
#  flat hand for paper
#  index and middle finger for scissors. 
#
# Rock crushes scissors
# Scissors cut paper
# Paper covers rock.


# import module random to use the random functions
import random

# Let the computer pick a random choice
computer_choice = random.choice(["rock", "paper", "scissors"])
#Print it
print ("computer_choice: " + computer_choice)

# Ask user what choice he/she wants
user_choice = input("Do you want rock, paper or scissors?")


if computer_choice == user_choice:
    # if both have the same choice it's a TIE
    print("TIE")
elif user_choice == "rock" and computer_choice == "scissors":
    # Rock wins from scissors
    print("WIN")
elif user_choice == "paper" and computer_choice == "rock":
    # paper wins from rock
    print("WIN")
elif user_choice == "scissors" and computer_choice == "paper":
    # scissors wins from paper
    print("WIN")
else:
    print("YOU LOOSE, computer WINS")
    