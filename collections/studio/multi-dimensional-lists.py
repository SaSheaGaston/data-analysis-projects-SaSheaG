food = "water bottles,meal packs,snacks,chocolate"
equipment = "space suits,jet packs,tool belts,thermal detonators"
pets = "parrots,cats,moose,alien eggs"
sleep_aids = "blankets,pillows,eyepatches,alarm clocks"

# a) Use split to convert the strings into four cabinet lists. Alphabetize the contents of each cabinet.

for i in food:
   cabinet_1 = sorted(food.split(","))
print(cabinet_1)

for i in equipment:
   cabinet_2 = sorted(equipment.split(","))
print(cabinet_2)

for i in pets:
   cabinet_3 = sorted(pets.split(","))
print(cabinet_3)

for i in sleep_aids:
   cabinet_4 = sorted(sleep_aids.split(","))
print(cabinet_4)


# b) Initialize a cargo_hold list and add the cabinet lists to it. Print cargo_hold to verify its structure.

cargo_hold = [cabinet_1, cabinet_2, cabinet_3, cabinet_4]
print(cargo_hold)

# c) Query the user to select a cabinet (0 - 3) in the cargo_hold.

user_input = int(input("Select cabinet 0, 1, 2 or 3: "))

# d) Use bracket notation and format to display the contents of the selected cabinet. If the user entered an invalid number, print an error message.

while user_input <= 0 or user_input > 3:
       user_input = int(input("Invalid choice. Please enter a number 0,1,2,3: "))
if 0 <= user_input <= len(cargo_hold):
   user_list = cargo_hold[user_input]
   print(f"You selected: {user_list}")


# e) Modify the code to query the user for BOTH a cabinet in cargo_hold AND a particular item. Use the in method to check if the cabinet contains the selected item, then print “Cabinet ____ DOES/DOES NOT contain ____.”


