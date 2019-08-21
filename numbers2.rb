#defines variables
prompt_1 = "Please enter a positive number."
prompt_2 = "Please enter a second number." 
prompt_3 = "Please enter a third number."
num_var = 20

# gathers user input
puts prompt_1
    num1 = gets.chomp.to_i
# determines if user input is greater than or equal to variable
if num1 >= 20
    print "#{num1} is greater than or equal to #{num_var}.\n"
else
    print "#{num1} is not greater than or equal to #{num_var}.\n"
end

puts prompt_2
    num2 = gets.chomp.to_i
if num2 >= 20
    print "#{num2} is greater than or equal to #{num_var}.\n"
else
    print "#{num2} is not greater than or equal to #{num_var}.\n"
end

puts prompt_3
    num3 = gets.chomp.to_i
if num3 >= 20
    print "#{num3} is greater than or equal to #{num_var}.\n"
else
    print "#{num3} is not greater than or equal to #{num_var}.\n"
end

puts "\nThanks for playing this game!"