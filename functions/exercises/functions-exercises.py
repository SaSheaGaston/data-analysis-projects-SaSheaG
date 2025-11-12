# Part 1 A -- Make a Line

def make_line(size):
    line = "#" * size
    print(line)



# Part 1 B -- Make a Square
# create a function using your make_line function to code a square

def make_square(size):
    for i in range(size):
        make_line(size)
    print("\n")

make_square(5)    




# Part 1 C -- Make a Rectangle

def make_rectangle(width, height):
    for i in range(height):
        make_line(width)
    

make_rectangle(5,3)




# Part 2 A -- Make a Stairs

def make_downward_stairs(height):
    size = 0
    for i in range(height):
        size += 1
        make_line(size)

make_downward_stairs(5)

# Part 2 B -- Make Space-Line 



def make_space_line(numSpaces, numChars):
    spaces = "_" * numSpaces
    chars = "#" * numChars
    print(spaces + chars + spaces)
    

make_space_line(3, 5)

# Part 2 C -- Make Isosceles Triangle

def make_isosceles_triangle(height):
    for i in range(height):
        make_space_line((height- i - 1), (2 * i + 1))

make_isosceles_triangle(5)



# Part 3 -- Make a Diamond

def make_diamond(height):
    make_isosceles_triangle(height)
    for i in range(height):
        make_space_line((height + 1 * i - height), (height + height - 2 * i - 1))
         
        

make_diamond(5)




