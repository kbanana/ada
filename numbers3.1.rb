# starting game message and entry of number of times the loop will repeat
puts "Let's play a numbers game. How many numbers would you like to enter?\n"
user_num = gets.chomp.to_i
again = "yes"


# sets up multiple plays
while again == "yes"

# game loop
i = 0
  while i < user_num
    puts "Enter a positive integer."
    # gets user number and converts to integer
    x = gets.chomp.to_i
      if x % 3 == 0
        puts "#{x} is divisible by 3!"
      else
        puts "#{x} is not divisible by 3."
      end
    i += 1
  end
  puts "Thanks for playing!\n"
  puts "Would you like to play again? (yes/no) > "
  again = gets.chomp
end

# things to fix for next time:
# how to make it so that it says "Enter first/second/third number" and so on