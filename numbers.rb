# gathers user input and stores values
prompt_1 = "Please enter a positive number."
puts prompt_1
    user_input = gets.chomp.to_i
        num1 = user_input
prompt_2 = "Please enter a second number."  
puts prompt_2
    user_input = gets.chomp.to_i
        num2 = user_input
prompt_3 = "Please enter a third number."
puts prompt_3
    user_input = gets.chomp.to_i
        num3 = user_input
            # creates an array of user input
            user_numbers = [ num1, num2, num3 ]
result = "Your three numbers are:\n#{user_numbers}"
    puts result

result_2 = "If you add twenty to your numbers they become:"
x = 20
    puts result_2
        # adds X to each element in array
        user_numbers.map { |e| puts e + x }
