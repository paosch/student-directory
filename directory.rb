#we put students inside an array
students = [
    "Dr. Hannibal Lecter",
    "Darth Vader",
    "Nurse Ratched",
    "Michael Corleone",
    "Alex DeLarge",
    "The Wicked Witch of the West",
    "Terminator",
    "Freddy Krueger",
    "The Joker",
    "Joffrey Baratheon",
    "Norman Bates"
]
#we print the list
puts "The students of Villains Academy"
puts "--------------"
students.each do |student|
  puts student
end
#we print the total
puts "Overall, we have #{students.count} great students"
