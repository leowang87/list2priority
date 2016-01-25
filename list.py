print "*" * 50
print "Welcome to Liang's List!"

print "\nYou are now about to input things that you need to do."
print "For each item, you will be asked if it is important and if it is urgent."

print "\nPlease anwser yes or no, and press 'Enter' to quit."

print "*" * 50

all_list = []
important_and_urgent = []
important_but_not_urgent = []
not_important_but_urgent = []
not_important_not_urgent = []

add = raw_input("\nPlase add your to-do: ")

while len(add) != 0:
	important = raw_input("Is it important? ")
	if important.lower() != "yes" and important.lower() != "no":
		print "please try again by input yes or no."
		#important = raw_input("Is it important? ")
	elif important.lower() == "yes":
		urgent = raw_input("Is it urgent? ")
		if urgent.lower() != "yes" and urgent.lower() != "no":
			print "please try again by input yes or no."
		elif urgent.lower() == "yes":
			important_and_urgent.append(add)
		elif urgent.lower() == "no":
			important_but_not_urgent.append(add)			
	elif important.lower() == "no":
		urgent = raw_input("Is it urgent? ")
		if urgent.lower() != "yes" and urgent.lower() != "no":
			print "please try again by input yes or no."
			#urgent = raw_input("Is it urgent? ")
		elif urgent.lower() == "yes":
			not_important_but_urgent.append(add)
		elif urgent.lower() == "no":
			not_important_not_urgent.append(add)
	add = raw_input("\nPlase add your to-do: ")
else: # when Enter is pressed, quit the program
	print "\nEND\n"

all_list = important_and_urgent + important_but_not_urgent + not_important_but_urgent + not_important_not_urgent

# print out the result
print "*" * 50

if len(all_list) == 0:
	print "\nThere is nothing in your list.\n"
else:
	print "\nHere is all your input"
	for a in all_list:
		print a
	
	print "\nHere is your list of priorities\n"

	if len(important_and_urgent) == 0:
		print "\nThere is nothing in your priority 1 list."
	else:
		print "\nPriority 1: Important and Urgent"
		for i in important_and_urgent:
			print i

	if len(important_but_not_urgent) == 0:
		print "\nThere is nothing in your priority 2 list."
	else:
		print "\nPriority 2: Important but not Urgent"
		for j in important_but_not_urgent:
			print j

	if len(not_important_but_urgent) == 0:
		print "\nThere is nothing in your priority 3 list."
	else:
		print "\nPriority 3: Not Important but Urgent"
		for m in not_important_but_urgent:
			print m

	if len(not_important_not_urgent) == 0:
		print "\nThere is nothing in your priority 4 list."
	else:
		print "\nPriority 4: Not Important but not urgent"
		for n in not_important_not_urgent:
			print n