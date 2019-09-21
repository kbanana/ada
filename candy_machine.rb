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

# Defines and prints welcome message 
entry_message = "Welcome to Kayla's Computer Cookie Shop! \n
    (All cookies provided are virutal.) \n
    Here's a list of all our delicious cookies of the day:"
puts entry_message

# defines variables for the cookie list, menu, user money
cookie_strings = cookie_list.map { |cookie| "%s: $%0.2f %s" % cookie }
menu_string = cookie_strings.join("\n")
order_message = "How much money have you got? > $"

# displays the menu
puts menu_string

# asks user for how much money they have
puts order_message
money = gets.chomp.to_f

# determines how much money the user has and responds based on high or low evaluation
if money >= 5.00
    print "$%0.2f!? That's a lot of cookies you can buy!\n" % [money]
else
    print "$%0.2f? That's all you've got?\n" % [money]
end

# asks for user order
puts "What would you like to buy?"
order = gets.chomp.upcase


# Scan the list for the right cookie
cookie_found = false
cookie_list.each do |cookie|
    if order == cookie[0]
        cookie_found = true
        
        # if the user has enough money for the cookie, we give it to them and calculate change
        if money >= cookie[1]
            puts "Great! Here is one %s\n" % [cookie[2]]
            puts "And here is your $%0.2f change." % [money - cookie[1]]
        else
            # if the user doesn't have enough money
            puts "Sorry, you can't afford a %s\n" % [cookie[2]]
        end
    end
end

# If we didn't end up finding their order in the list, it was invalid.
if !cookie_found
    puts "Sorry, I don't recognize the order '%s'." % [order]
end
