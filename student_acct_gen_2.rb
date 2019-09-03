#starting variables
student_database = []
num_students = 5

# gets student names from the user and puts them into a hash
num_students.times do
  puts "Please enter a student name (FIRST LAST) >"
  student_name = gets.chomp.upcase
  #defines the keys/values in the database
  new_student = { name:student_name, ID:rand(111111..999999).to_s, email:"" }
  
  #computes the student's email
  first_intial = new_student[:name][0]
  last_name = new_student[:name].split(" ").last
  email_id = new_student[:ID][3,3]
  new_student[:email] = "#{first_intial}#{last_name}#{email_id}@adadevelopersacademy.org"

  #pushes the new student hash into the array
  student_database << new_student
end

#prints names, IDs, and emails in the hash
puts student_database
