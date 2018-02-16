# 1.Print a number before the name of each student
def print(students)
  students.each_with_index do |student, index|
    indexstartone = index + 1
    puts "#{indexstartone}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end


# 2.Only print the students whose name begins with a specific letter
def print(students)
  students.each do |student|
    if student[:name].capitalize.match(/^P/)
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end


# 3.Only print the students whose name is shorter than 12 characters.
def print(students)
  students.each do |student|
    if student[:name].length < 12
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end


# 4.Rewrite the each() method using while or until control flow methods
def print(students)
  i = 0
  while students.lenght > i do
    puts students[i][:name]
    i += 1
  end
end


# 5.Add more information: hobbies, country of birth, height, etc.
def input_students
  empty = false
  students = []
  puts "Please enter student name"
  puts "To finish, just hit return twice"
  name = gets.chomp
  if name == ""
    name = "-"
  end
  puts "Please enter student age"
  age = gets.chomp
  if age == ""
    age = "-"
  end
  puts "Please enter student nationality"
  nationality = gets.chomp
  if nationality == ""
    nationality = "-"
  end
  puts "Please enter cohort"
  cohort = gets.chomp
  if cohort == ""
    cohort = "-"
  end
  until empty
    students << {name: name, age: age, nationality: nationality, cohort: cohort}
    puts "Now we have #{students.count} students"
    puts "Please enter student name"
    name = gets.chomp
    if name == ""
      name = "-"
      empty = true
    end
    puts "Please enter student age"
    age = gets.chomp
    if age == ""
      age = "-"
    end
    puts "Please enter student nationality"
    nationality = gets.chomp
    if nationality == ""
      nationality = "-"
    end
    puts "Please enter cohort"
    cohort = gets.chomp
    if cohort == ""
      cohort = "-"
    end
  end
  students
end

#and for printing all the info:
def print(students)
  i = 0
  while students.length > i do
    puts "#{students[i][:name]} #{students[i][:age]} #{students[i][:nationality]} (#{students[i][:cohort]} cohort)"
    i += 1
  end
end


# 6.Use method center() to make the output beautifully aligned
def print_header
  puts "The students of Villains Academy".center(80)
  puts "--------------".center(80)
end

def print(students)
  i = 0
  while students.length > i do
    puts "#{students[i][:name].center(20)} #{students[i][:age].center(20)} #{students[i][:nationality].center(20)} (#{students[i][:cohort]} cohort)"
    i += 1
  end
end
