<<<<<<< Updated upstream
student_names = []
student_ids = []
student_emails = []

5.times do
=======
#starting variables
student_names = []
student_ids = []
student_emails = []
num_students = 5

# gets student names from the user and puts them in an array
num_students.times do
>>>>>>> Stashed changes
  puts "Please enter a student name (FIRST LAST) >"
  student_names << gets.chomp.upcase
end

<<<<<<< Updated upstream
student_names.length.times do |name|
  student_ids << rand(111111..999999)
end

student_names.length.times do |name|
	student_emails << "#{}@adadeveloperacademy.org"
end

puts student_names
puts student_ids
puts student_emails
=======
# generates random student ID numbers and puts them in an array
num_students.times do |name|
  student_ids << rand(111111..999999).to_s
end

num_students.times do |i|
  #gets the first intitial of the first name
  first_intial = student_names[i][0]
  #gets the last name
  last_name = student_names[i].split(" ").last
  #gets the last three digits of the ID
  email_id = student_ids[i][3,3]
  #generates email string and pushes to array
  student_emails << "#{first_intial}#{last_name}#{email_id}@adadevelopersacademy.org"
end

#prints names, IDs, and emails in parallel
num_students.times do |i|
  puts "#{student_names[i]} #{student_ids[i]} #{student_emails[i]}"
end
>>>>>>> Stashed changes

