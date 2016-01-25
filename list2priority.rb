puts "*" * 50
puts "Welcome to Liang's List!"

puts "\nYou are now about to input things that you need to do."
puts "For each item, you will be asked if it is important and if it is urgent."

puts "\nPlease anwser yes (y) or no (n), and press 'Enter' to quit."
puts "*" * 50

puts "Howdy! Please put your things to do here:"

ImportantAndUrgent = Array.new
ImportantButNotUrgent = Array.new
UrgentButNotImportant = Array.new
NotImportantNotUrgent = Array.new

all_list = [ImportantAndUrgent, ImportantButNotUrgent, UrgentButNotImportant, NotImportantNotUrgent]
# all_list = Array.new

print "Plase add your to-do: "
todo = gets.chomp

while todo.downcase != ""
  print "Is this important? "
  important = gets.chomp
  
  if important == ""
    break
  elsif important == "yes" or important == "y"
    print "Is this urgent? "
    urgent = gets.chomp
    
    if urgent == "yes" or urgent == "y"
      ImportantAndUrgent.push(todo)
    elsif urgent == ""
      break
    else
      ImportantButNotUrgent.push(todo)
    end
  else
    print "Is this urgent? "
    urgent = gets.chomp
    
    if urgent == "yes" or urgent == "y"
      UrgentButNotImportant.push(todo)
    elsif urgent == ""
      break
    else
      NotImportantNotUrgent.push(todo)
    end
  end
  print "Please add new task: "
  todo = gets.chomp
  
end

# print out the result
puts "Your list of things are: "
puts "*" * 50

if all_list.flatten.length == 0
	puts "\nThere is nothing in your list.\n"
else
	puts "\nHere is all your input"
	all_list.each{|x| puts x}
	
	puts "\nHere is your list of priorities\n"

	if ImportantAndUrgent.length == 0
		puts "\nThere is nothing in your priority 1 list."
	else
		puts "\nPriority 1: Important and Urgent"
    ImportantAndUrgent.each{|x| puts x}
  end

	if ImportantButNotUrgent.length == 0
		puts "\nThere is nothing in your priority 2 list."
	else
		puts "\nPriority 2: Important but not Urgent"
		ImportantButNotUrgent.each{|x| puts x}
	end
		
	if UrgentButNotImportant.length == 0
		puts "\nThere is nothing in your priority 3 list."
	else
		puts "\nPriority 3: Not Important but Urgent"
		UrgentButNotImportant.each{|x| puts x}
	end

	if NotImportantNotUrgent.length == 0
		puts "\nThere is nothing in your priority 4 list."
	else
		puts "\nPriority 4: Not Important but not urgent"
		NotImportantNotUrgent.each{|x| puts x}
	end
end
