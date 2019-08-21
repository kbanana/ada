# defines variabe=le
prompt_1 = "Please enter a positive number."
prompt_2 = "Please enter a second number." 
prompt_3 = "Please enter a third number."
num_var = 20

# gathers user input
puts prompt_1
    user_input = gets.chomp.to_i
        num1 = user_input
# determines if user input is greater than or equal to variable
if num1 >= num_var
    print "#{num1} is greater than or less than #{num_var}"
else
    print "#{num1} is not greater than or less than #{num_var}"
puts prompt_2
    user_input = gets.chomp.to_i
        num2 = user_input
if num1 >= num_var
    print "#{num2} is greater than or less than #{num_var}"
else
    print "#{num2} is not greater than or less than #{num_var}"
puts prompt_3
    user_input = gets.chomp.to_i
        num3 = user_input
if num1 >= num_var
    print "#{num1} is greater than or less than #{num_var}"
else
    print "#{num1} is not greater than or less than #{num_var}"

puts "Thanks for playing this game!"