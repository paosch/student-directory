def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do #while name not empty
    students << {name: name, cohort: :november} #add student hash to the array
    puts "Now we have #{students.count} students"
    name = gets.chomp #get another name from the user
  end
  students #returns the array
end

def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
#we now need to call the methods
students = input_students
print_header
print(students)
print_footer(students)
