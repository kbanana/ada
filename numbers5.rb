# defining the starting variables
starting_hash = {}
number_hash = {}
random_array = []
user_num_array = []
repeat_num = 5

# chooses random numbers to put into the array
repeat_num.times do 
    random_array << rand(12..21)
end

# defines the first hash and random number array
starting_hash = {random_number: random_array}

# gets 5 integers from the user and puts them into the array
puts "Please provide five integer values between 12 and 21, both inclusive:\n"
repeat_num.times do |i|
    puts "What's number #{i+1}? > "
    user_num_array << gets.chomp.to_i
end

# puts the user numbers into the first hash
starting_hash[:user_input] = user_num_array

# defines the number of times we'll ask the user to input a number
ask_user_num = 3

# asks the user for numbers
ask_user_num.times do |i|
    puts "Give me a number you want information about: > "
    user_entry_num = gets.chomp.to_i
    
    # counts the number of times that number the user gave earlier and assigns to a variable
    user_count = user_num_array.count(user_entry_num)

    # counts the number of times that number the user gave earlier and assigns to a variable
    random_count = random_array.count(user_entry_num)
    
    # assigns the user number to a key for the hash
    number_requested = user_entry_num
    
    # assigns keys and values to the number hash
    if number_hash[:number_requested] == nil
        number_hash[:number_requested] = {user_count:0, random_count:0}
    else
        number_hash[:number_requested][:user_count] = user_count
        number_hash[:number_requested][:random_count] = random_count    
    end

    # provides information to the user about the numbers they requested in the user array
    if number_hash[:number_requested][:user_count] > 0
        puts "The number #{user_entry_num} was provided #{number_hash[:number_requested][:user_count]} time(s) by the user."
    else 
        puts "The number #{user_entry_num} was not provided by the user."
    end

    # provides information to the user about the numbers they requested in the random array
    if number_hash[:number_requested][:random_count] > 0
        puts "The number #{user_entry_num} shows up #{number_hash[:number_requested][:random_count]} time(s) in the randomly generated numbers."
    else 
        puts "The number #{user_entry_num} did not show up in the randomly generated numbers."
    end

end






