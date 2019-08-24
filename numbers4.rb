# starting game message and entry of number of times the loop will repeat
puts "Let's play a numbers game. How many numbers would you like to enter?\n"
user_num = gets.chomp.to_i
user_array = []

# collecting numbers for the array
i = 0
    until i == user_num
        puts "Enter a positive integer."
        # gets user number and converts to integer
        x = gets.chomp.to_i
        # pushes user number to the array
        user_array << x
        i += 1
    end
    puts "Your numbers are: #{user_array}"

    #computations and comparisons of user inputs
    puts "Comparing to the last value entered, #{user_array.last}, here are the observations:\n"
    user_array.each do |number|
        if number > user_array.last
            puts "#{number} is greater than #{user_array.last}."
        elsif number < user_array.last
            puts "#{number} is less than #{user_array.last}."
        else 
            puts "#{number} is equal to #{user_array.last}."
        end
    end

sum = user_array.inject(0.0) { |result, el| result + el }
mean = sum / user_array.size


# Prints min, max, average of the array
puts "\nThe minimum value of the array is #{user_array.min}."
puts "The maximum value of the array is #{user_array.max}."
puts "The average of all the values in the array is #{mean}."
puts "\nThanks for playing!"