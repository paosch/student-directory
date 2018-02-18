# 1.I created a new method:
def students_to_array(name, cohort = :february)
  @students << {name: name, cohort: cohort}
end

#I can then call the new method inside the input_students method:
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  @students = []
  name = STDIN.gets.chomp
  while !name.empty? do
  students_to_array(name) #this line
  puts "Now we have #{@students.count} students"
    name = STDIN.gets.chomp
  end
end

#I also call the new method inside the load_students method:
def load_students(filename = "students.csv.txt")
  file = File.open(filename, "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(",")
    students_to_array(name, cohort) #this line
  end
  file.close
end



# 2. I would add an if statement to the try_load_students method like this:
def try_load_students
  filename = ARGV.first
  if filename.nil?
    load_students #if no file, the program will go and use the default file in the load_students method
    return
  end
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else
    puts "Sorry, #{filename} doesn't exist."
    exit
  end
end



 # 4. I would add a line that prints a message inside the following methods:
 def process(selection)
   case selection
   when "1"
     input_students
   when "2"
     puts "Showing students..." #this line
     show_students
   when "3"
     puts "Saving list of students..." #this line
     save_students
   when "4"
     puts "Loading list of students..." #this line
     load_students
   when "9"
     puts "Exiting..." #this line
     exit
   else
     puts "I don't know what you meant, try again"
   end
 end
#and
 def input_students
   puts "Please enter the names of the students"
   puts "To finish, just hit return twice"
   @students = []
   name = STDIN.gets.chomp
   while !name.empty? do
     puts "Registering student..." #this line



# 5. Asking user for file where to save and load from
#I would change menu options 3 and 4 to just say "Save the list" and "Load the list" instead of mentioning the students.csv file

#I would change the following methods to ask for user input:
def save_students
  puts "Where would you like to save?"
  filename = gets.chomp
  file = File.open(filename, "w") do |f|
    @students.each do |student|
      student_data = [student[:name], student[:cohort]]
      csv_line = student_data.join(",")
      f.puts csv_line
    end
  end
end

#I would also change option 4 in the process method to:
when "4"
  puts "What file from?"
  filename = gets.chomp
  load_students



# 6. Give File.open a block so that it closes the file automatically
def save_students
  puts "Where would you like to save?"
  filename = gets.chomp
  file = File.open(filename, "w") do |f| # the block begins in this line
    @students.each do |student|
      student_data = [student[:name], student[:cohort]]
      csv_line = student_data.join(",")
      f.puts csv_line
    end
  end
end

# and also in the load_students method:
def load_students(filename = "students.csv.txt")
  file = File.open(filename, "r") do |f| # the block begins in this line
  f.readlines.each do |line|
    name, cohort = line.chomp.split(",")
    @students << {name: name, cohort: cohort.to_sym}
    end
  end
end
