# the array to store the user numbers
user_numbers = []
num_times = 3

num_times.times do |i|
    puts "Please enter postive number #{i+1}:"
    user_numbers << gets.chomp.to_i
end

puts "Your three numbers are:\n#{user_numbers}"

# I wanted to try to put this in a function and call it to produce this result :(
def add_number(number)
    user_numbers.map { |i| puts i + change_num }
end

puts "If you add twenty to your numbers they become:\n"
puts add_number(20)