# defining the starting variables
starting_hash = {}
number_hash = {}
random_array = []
user_num_array = []

# the number of times we'll ask the user for a number
repeat_num = 5

# the number of times we'll ask the user about numbers
ask_user_num = 3

# chooses random numbers to put into an array
repeat_num.times do 
    random_array << rand(12..21)
end

# gets 5 integers from the user and puts them into an array
puts "Please provide five integer values between 12 and 21, both inclusive:\n"
repeat_num.times do |i|
    puts "What's number #{i+1}? > "
    user_num_array << gets.chomp.to_i
end

# defines the first hash with the two arrays
starting_hash = {random_number: random_array, user_input: user_num_array}    

# creates an array to create the second hash
second_h_a = (user_num_array + random_array).uniq

# assigns keys and values to the second hash
for num in second_h_a do
    user_count = user_num_array.count(num)
    random_count = random_array.count(num)
    number_hash[num] = {user_count: user_count, random_count: random_count}
    if user_count == nil
     number_hash[num][:user_count] = 0
     if random_count == nil
        number_hash[num][:random_count] = 0
     end
    end  
end

# asks the user for numbers
ask_user_num.times do |i|
   puts "Give me a number you want information about: > "
    user_entry_num = gets.chomp.to_i

    # provides information to the user about the numbers they requested from the second hash
   if number_hash[user_entry_num][:user_count] > 0
    puts "According to the second hash, the number #{user_entry_num} was provided #{number_hash[user_entry_num][:user_count]} time(s) by the user."
    else 
       puts "According to the second hash, the number #{user_entry_num} was not provided by the user."
   end

   # provides information to the user about the numbers they requested from the first hash
   # rand_result = random_array.count(user_entry_num)
   # user_result = user_num_array.count(user_entry_num)

    # provides information to the user about the numbers they requested in the random array
   if number_hash[user_entry_num][:random_count] > 0
    puts "According to the second hash, the number #{user_entry_num} shows up #{number_hash[user_entry_num][:random_count]} time(s) in the randomly generated numbers."
   else 
    puts "According to the second hash, the number #{user_entry_num} did not show up in the randomly generated numbers."
    end

end

