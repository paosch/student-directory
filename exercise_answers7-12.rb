# 7.Ask for cohort (vs. hardcoded cohort) and give default values
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


# 8.Print students grouped by cohort
def print(students)
  months = ['january', 'february', 'march', 'april', 'may', 'june', 'july', 'august', 'september', 'october', 'november', 'december']

  months.map do |month|
    students.map do |student|
      if (student[:cohort].downcase == month)
        puts "#{student[:name]}".center(20) + "#{student[:age]}".center(20) + "#{student[:nationality]}".center(20) + "(#{student[:cohort]} cohort)"
      end
    end
  end
end



# 9. Use singular or plural of 'student' appropriately
  #a change in the until loop of the def input_students method:
until empty
  students << {name: name, age: age, nationality: nationality, cohort: cohort}
  if students.count == 1
    puts "Now we have 1 student"
  else
    puts "Now we have #{students.count} students"
  end
  #a change in the print_footer method
def print_footer(students)
  if students.count == 1
    puts "Overall, we have 1 great student"
  else
    puts "Overall, we have #{students.count} great students"
  end
end


# 10.A method which is similar to chomp but requires argument: the delete method


# 11.See Exercise 11 commit pushed to Github


# 12.Use an if statement not to print if there are no students
  #a change in the if name statement inside the def input_students method:
def input_students
  empty = false
  students = []
  puts "Please enter student name"
  puts "To finish, just hit return twice"
  name = gets.chomp
  if name == ""
    exit
  end
