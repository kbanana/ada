student_names = ""
student_ids = ""
student_emails = ""

5.times do
  puts "Please enter a student name (FIRST LAST) >"
  student_names << gets.chomp.upcase
end

5.times do |name|
  student_ids << rand(111111..999999).to_s
end

5.times do
  student_emails << student_names[0] + student_names.split(" ").last + student_ids[3,3] + "@adadevelopersacademy.org"
end

student_names_array = [student_names.split(" ",2)]
student_ids_array = [student_ids.split(" ")]
student_emails_array = [student_emails.split(" ")]

#5.times do
#  puts "Please enter a student name (FIRST LAST) >"
#  student_names << gets.chomp.upcase
#end

#student_names.length.times do |name|
#  student_ids << rand(111111..999999)
#end

#student_names_str = student_names.join(", ")
#student_ids_str = student_ids.join(", ")



#student_names.each do
#  email_names = name[0] + name.split(" ").LAST
#end


# student_names.each do |name|
#   student_emails << " #{email_names}" + student_ids[3,3] "@adadevelopers.org"
# end


puts student_names_array
puts student_ids_array
puts student_emails_array
#puts email_names

