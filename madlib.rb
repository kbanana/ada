puts "Let's play a Madlib! What's your name?"
    user_input = gets
        name = user_input.chomp
puts "Thanks,#{name}! Now I need an adjective."
    user_input = gets
        adjective1 = user_input.chomp
puts "Great! Now I need a plural noun."
    user_input = gets
        noun1 = user_input.chomp
puts = "How about another adjective?"
    user_input = gets
        adjective2 = user_input.chomp
puts "And another plural noun, please."
    user_input = gets
        noun2 = user_input.chomp
puts "Now an adverb!"
    user_input = gets
        adverb = user_input.chomp
puts "Almost ready! I just need one more adjective."
    user_input = gets
        adjective3 = user_input.chomp
madlib = "Welcome to #{name}'s Coffee Shop!\nOther than coffee, we sell #{adjective1} #{noun1}.\nWe foundly call our customers #{adjective2} #{noun2}.Those #{noun2} sure drink coffee #{adverb}!\nThanks to all our #{adjective3} customers for making #{name}'s Coffee Shop the best!"
puts "Here's your Madlib:""\n#{madlib}"