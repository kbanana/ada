#starting variables
walker_scores = []

#starting text
puts "Welcome to Kayla's Walk-a-thon Tracker!\nOur goal is to raise money!"
puts "Enter the earning goal for this event > "

#collects the earning goal
earning_goal = gets.chomp.to_i
puts "Enter the amount earned per lap (per person) > "

#collects the amount of money each lap is worth
lap_worth = gets.chomp.to_f

#collects the number of walkers 
puts "Please enter the number of walkers in the walk-a-thon > "
walker_count = gets.chomp.to_i

# loop for gathering walker data
puts "Please enter the number of laps completed by each person.\n"
walker_count.times do |i|
    
    #asks for the number of laps for the walker
    puts "Walker ##{i+1} laps > "
    walker_entry = gets.chomp.to_f
    
    #multiples the entry by the lap worth
    walker_earned = (walker_entry * lap_worth)

    #prints the amount the walker earned
    puts "Walker ##{i+1} earned: $%0.2f." % walker_earned

    #pushes the score into an array
    walker_scores << walker_earned
end

puts "============================\n"

#finds highest number in the array at index
highest_walker = walker_scores.each_with_index.max[1]
puts "Highest Earning Walker: #{highest_walker+1}"

#finds the sum
total_amount = walker_scores.sum
puts "Total amount earned: $%0.2f." % total_amount

#determines if the earning goal was met
puts "Goal met?\n"
if total_amount >= earning_goal
    print "Yes!!! We did it!"
else
    print "No... :( Maybe next year..."
end

#option if the goal was not met
if total_amount < earning_goal
    missed_amount = (earning_goal-total_amount)
    print "\nThe goal was missed by $%0.2f." % missed_amount
end

