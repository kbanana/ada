student_names = []
student_ids = []
student_emails = []

5.times do
  puts "Please enter a student name (FIRST LAST) >"
  student_names << gets.chomp.upcase
end

student_names.length.times do |name|
  student_ids << rand(111111..999999)
end

student_names.length.times do |name|
	student_emails << "#{}@adadeveloperacademy.org"
end

puts student_names
puts student_ids
puts student_emails

