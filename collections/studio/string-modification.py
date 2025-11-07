my_string = "LaunchCode"


# a) Use string methods to remove the first three characters from the string and add them to the end.

new_string = my_string[0:3]
end_string = my_string[3:]
answer = end_string + new_string
print(answer)

# Use a template literal to print the original and modified string in a descriptive phrase.


print(f"This is pig latin {answer}.")



# b) Modify your code to accept user input. Query the user to enter the number of letters that will be relocated.
user_input = int(input("Enter number of letters to remove: "))

# c) Add validation to your code to deal with user inputs that are longer than the word. In such cases, default to moving 3 characters. Also, the template literal should note the error.
num_of_chars = int(user_input)
if num_of_chars > len(my_string):
    beginning_chars = my_string[:3]
    next_chars = my_string[3:]
    new_string = beginning_chars + next_chars
    output = "Error"
    print(output.format(num_of_chars, beginning_chars, next_chars))
else:
    beginning_chars = my_string[:num_of_chars]
    next_chars = my_string[num_of_chars:]
    new_string = next_chars + beginning_chars
    print(f"This is pig latin {new_string}.") 