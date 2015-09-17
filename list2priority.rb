# this is a test of my skills of ruby
# I try to come up with a prioritied list of my daily things to do

# fork remote

puts "Howdy! Please put your things to do here:"
ImportantAndUrgent = Array.new
ImportantButNotUrgent = Array.new
UrgentButNotImportant = Array.new
NotImportantNotUrgent = Array.new

priority = [ImportantAndUrgent, ImportantButNotUrgent, UrgentButNotImportant, NotImportantNotUrgent]
todo = gets.chomp



while todo.downcase != ""
  puts "Is this important?"
  important = gets.chomp
  puts "Is this urgent?"
  urgent = gets.chomp
  
  if important = "yes"
    if urgent
      ImportantAndUrgent[] << todo
    else
      ImportantButNotUrgent[] << todo
  end
  
  if important != "yes"
    if urgent
      UrgentButNotImportant << todo
    else
      NotImportantNotUrgent << todo
  end
  
  # puts "Do you have anything else to do? If yes put it here, put nothing to stop."
  # priority << gets.chomp
  # yn = priority.last
end


puts "Your list of things are:"
puts priority