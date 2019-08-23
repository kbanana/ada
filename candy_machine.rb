#define cookie inventory

cookie_list = [
    ["A", 4.00, "Chocolate Chip"],
    ["B", 3.00, "Snickerdoodle"],
    ["C", 3.50, "Marshmallow"],
    ["D", 3.25, "Oatmeal"],
    ["E", 4.25, "M&M"],
    ["F", 4.50, "Deluxe Brownie"],
    ["G", 4.75, "Deluxe Lemon Bar"],
    ["H", 3.75, "PB&J Bar"],
]

# Print welcome message and ask for the order

entry_message = "Welcome to Kayla's Computer Cookie Shop! \n
    (All cookies provided are virutal.) \n
    Here's a list of all our delicious cookies of the day:"

puts entry_message

cookie_strings = cookie_list.map { |cookie| "%s: $%0.2f %s" % cookie }
menu_string = cookie_strings.join("\n")
puts menu_string

order_message = "How much money have you got? > $"
puts order_message
money = gets.chomp.to_f

if money >= 5.00
    print "$%0.2f!? That's a lot of cookies you can buy!\n" % [money]
else
    print "$%0.2f? That's all you've got?\n" % [money]
end

puts "What would you like to buy?"
order = gets.chomp.upcase


# Scan the list for the right cookie
cookie_found = false
cookie_list.each do |cookie|
    if order == cookie[0]
        cookie_found = true
        if money >= cookie[1]
            puts "Great! Here is one %s\n" % [cookie[2]]
            puts "And here is your $%0.2f change." % [money - cookie[1]]
        else
            puts "Sorry, you can't afford a %s\n" % [cookie[2]]
        end
    end
end


# If we didn't end up finding their order in the list, it was invalid.
if !cookie_found
    puts "Sorry, I don't recognize the order '%s'." % [order]
end
