from collections import OrderedDict

# Choices for main menu (constants)
CHOICES = '1: Send a Thank You \n2: Create a Report \n3: Quit\n'
NAME    = 'Name? '
DONATION = 'Donation Amount: '

# pre-existing donor data
donors = {'charly': [100.00], 'andrew': [80.00]} 

def mailroom():
	""" Mailroom Madness - Handling Donations """
	
	# Loop forever for input from user(s)
	while True:
		# Get input choice from user
		choice = getInput(CHOICES)
		
		# Enter a Donation
		if choice == '1':
			# Continue to prompt for name input when not valid format
			while True:
				# Get donor name. 
				#	Lowercase it to make entry case-insensitive.
				#	Strip any leading/trailing whitespace
				name     = getInput(NAME).lower().strip()
				
				# Valid input
				if name != '':
					break
				print("Must Enter a Name!")
			
			# Continue to prompt for donation input when not valid format
			while True:
				# Get donation amount.
				#	Convert to whole dollar amount (round down)
				#	Check input is an integer!
				try:
					donation = int( getInput(DONATION) )
				except:
					print("Not a dollar amount!")
				# Valid input, is a dollar amount
				else:
					# New Donor, create first entry
					if name not in donors:
						donors[name] = [donation]
					# Existing donor, keep tally of donations
					else:
						donors[name] += [donation]
						
					print("Dear {0}, Thank you for your generous donation of {1}! We will be sure to put it to good use! Sincerely, Your Local Charity".format(name, "{0:.2f}".format(donation)))
					break

		elif choice == '2':
			# Change the dictionary (from unordered collection) to an ordered collection (aka sorted alphabetrically)
			ordered = OrderedDict(sorted(donors.items()))
			
			# itetate through the ordered collection, which returns tuples ( name, donation list )
			for name, donations in ordered.items():
				numDonations  = len(donations)	# number of donations
				totalDonation = sum(donations)	# sum of donations
				avgDonation   = totalDonation/numDonations
				print("Name: {0} \t Total: {1} \t Number Donations: {2} \t Average donation: {3}".format(name, totalDonation, numDonations, avgDonation))

		# Quit
		elif choice == '3':
			break
			
		else:
			print("Not a Valid Choice")
		
def getInput(prompt):
	""" Wrapper around getting input so we can automate testing by redefining the getInput name alias
		Note, while it is legal to redefine a builtin function (aka input), it is bad practice!
		Instead, we make a wrapper function and redefine the name alias for that.
	"""
	return input(prompt)
	
# Called from command line
if __name__ == "__main__":
	mailroom()

		
	