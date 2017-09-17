#
# Machine Learning OOP - Titanic Dataset
#
# by Andrew Ferlitsch, Sept. 2017
#
# This solution is fully implemented using modern software development OOP methodology, vs. writing it as a procedural
# solution, which I see most frequently in blogs. The program is written for Python 3.
#
# This is a generalized solution and can be used for datasets otherthan Titanic. I use the Titanic dataset to demonstrate
# the use of my Train and Model classes. The dataset preparation steps used here closely following those in this blog
# by Ahmed Besbes:
#
#	http://ahmedbesbes.com/how-to-score-08134-in-titanic-kaggle-challenge.html
#
# Feel free to improve on the solution and make a pull request.
#
from mloop import Train
from mloop import Model
				
class Titanic(Train):
	""" Subclass for dataset preparation specific to Titanic Data """
	def __init__(self, training_data, test_data=None):
		super().__init__(training_data, test_data)

	def ticketColumn(self):
		# a function that extracts each prefix of the ticket, returns 'XXX' if no prefix (i.e the ticket is a digit)
		def cleanTicket(ticket):
			ticket = ticket.replace('.','')
			ticket = ticket.replace('/','')
			ticket = ticket.split()
			ticket = map(lambda t : t.strip(), ticket)
			#ticket = filter(lambda t : not t.isdigit(), ticket)
			ticket = list(filter(lambda t : not t.isdigit(), ticket))
			if len(ticket) > 0:
				return ticket[0]
			else: 
				return 'XXX'


		# Extracting dummy variables from tickets:

		if self._combined_data is not None:
			self._combined_data['Ticket'] = self._combined_data['Ticket'].map(cleanTicket)
			tickets_dummies = pd.get_dummies(self._combined_data['Ticket'], prefix='Ticket')
			self._combined_data = pd.concat([self._combined_data, tickets_dummies], axis=1)
			# eliminate one of the dummy variables
			self.dropColumn("Ticket_XXX")
			self.dropColumn("Ticket")
		
	def familyColumns(self):
		""" introducing a new feature : the size of families (including the passenger) """
		if self._combined_data is not None:
			self._combined_data['FamilySize'] = self._combined_data['Parch'] + self._combined_data['SibSp'] + 1
		
			# introducing other features based on the family size
			self._combined_data['Singleton'] = self._combined_data['FamilySize'].map(lambda s: 1 if s == 1 else 0)
			self._combined_data['SmallFamily'] = self._combined_data['FamilySize'].map(lambda s: 1 if 2<=s<=4 else 0)
			self._combined_data['LargeFamily'] = self._combined_data['FamilySize'].map(lambda s: 1 if 5<=s else 0)
		else:
			if self._training_data is not None:
				self._training_data['FamilySize'] = self._training_data['Parch'] + self._training_data['SibSp'] + 1
			
				# introducing other features based on the family size
				self._training_data['Singleton'] = self._training_data['FamilySize'].map(lambda s: 1 if s == 1 else 0)
				self._training_data['SmallFamily'] = self._training_data['FamilySize'].map(lambda s: 1 if 2<=s<=4 else 0)
				self._training_data['LargeFamily'] = self._training_data['FamilySize'].map(lambda s: 1 if 5<=s else 0)
		
		# Drop the Parch and SpSip columns
		self.dropColumn("Parch")
		self.dropColumn("SibSp")

def titanic(train_data, test_data=None):
	""" Kaggle/Titanic Dataset - Predict Survived """
	global train, model
	
	# For the Titanic dataset, we start by combining the training and test data into one dataset and do the data preparation
	# on the combined dataset. Later (at end), we will separate them back into the training and test data set.
	#
	combine = True	

	# Instantiate a training object (Titanic is subclass of Train), passing in the paths to the training and test data,
	# and then load (read) the data into a panda Dataframe. Throughout the data preparation process, the data is kept as 
	# a panda dataframe.
	#
	train = Titanic(train_data, test_data)
	print("Load Dataset")
	train.load()

	# Set which column is the label (what to learn) and then remove the label column from the training data.
	#
	print("Set the Label")
	train.setLabel("Survived")
	print("Remove the Label")
	train.removeLabel()

	# The two datasets will be combined into one.
	#
	if combine == True:
		print("Combine Datasets")
		train.combine()

	# Remove the PassengerId column. It is just a sequential numerical ordering. Therefore it does not contribute as a feature.
	# It would also be a detriment since passenger with Id 800 would be 800 times more significant than passenger with Id 1.
	#
	print("Drop PassengerId")
	train.dropColumn("PassengerId")

	# The Embarked column is missing a couple of entries, replace them with S (South Hampton)
	#
	print("Replace Missing Values in Embarked")
	train.missingValues("Embarked", 'S')

	# A lot of the Cabin values are missing. Cabin identifiers start with a letter which represents a deck, followed by a number,
	# which represents a cabin on that deck. Deck levels get lower as the letter increases (A is at top level). 
	# Replace missing values with U (unknown)
	#
	print("Replace Missing Values in Cabin")
	train.missingValues("Cabin", 'U')

	# One value is missing in the Fare column, replace it with the mean value of the remaining fares.
	#
	print("Replace Missing Values in Fare")
	train.missingValues("Fare", "mean")

	# Gender (Sex) appears as categorical values: male, female. Convert it to a binary classifier (1 = male, 0 = female).
	#
	print("Convert Gender to Binary")
	train.genderColumn("Sex")

	# The name in the Name column does not contribute to the model. But the N field contains titles (e.g., Mr, Dr, Capt)
	# which indicate a person's social status of the time period. Individuals with high social status had a statistically 
	# higher likelihood of surviving.
	#
	# Extract the title information and place into a new column for Title, and drop the Name column.
	#
	print("Convert Name to Title")
	train.nameColumn("Name")

	# The Age column has a large number of missing ages. We could replace it with the mean average of all the remaining 
	# non-missing ages. Instead, we figure that men and women, and people of different titles and passenger class (1 being 
	# highest and 3 lowest) likely have different age distributions. So instead we group then by gender (sex), passenger 
	# class (Pclass) and title, and find the mean age per group.
	#
	print("Replace Nan in Age")
	train.ageColumn("Age", [ "Sex", "Pclass", "Title" ])

	# The first letter in the Cabin refers to the deck. The number following it refers to the room number on the deck. 
	# There is little significance to the room number, so we shorten the value to just the deck (first letter).
	#
	print("Shorten Values to first letter in Cabin")
	train.shortenColumn("Cabin", 1)

	# The Pclass column is the passenger class, which can take values 1 (highest), 2, and 3 (lowest). These numbers are
	# categorical values. We replace the column with a dummy variable conversion, and drop one of the dummy variables 
	# (Pclass_1) to eliminate the dummy variable trap.
	#
	print("Categorical Variable Conversion for Pclass")
	train.convertCategorical("Pclass", "1")

	# The Cabin column (now a single letter) is the deck. We replace the column with a dummy variable conversion, and drop
	# one of the dummy variables (Cabin_U) to eliminate the dummy variable trap.
	#
	print("Categorical Variable Conversion for Cabin")
	train.convertCategorical("Cabin", "U")

	# The Embarked column is a single letter code where the passenger got on the boat: S for South Hampton/England, C for 
	# Cherbourg/France, and Q for Queenstown/Ireland. We replace the column with a dummy variable conversion, and drop one
	# of the dummy variables (Embarked_S) to eliminate the dummy variable trap.
	#
	print("Categorical Variable Conversion for Embarked")
	train.convertCategorical("Embarked", "S")

	# The (new) Title column is the title from the person's Name column. We replace the column with a dummy variable
	# conversion, and drop one of the dummy variables (Title_Mr) to eliminate the dummy variable trap.
	#
	print("Categorical Variable Conversion for Title")
	train.convertCategorical("Title", "Mr")

	# The Ticket column is the ticket identifier, which contains a ticket prefix followed by a sequential number code.
	# We shorten it to just the prefix, and then do a categorical variable conversion.
	# NOTE: This is specific to the Titanic data, so the method is implemented in the subclass Titanic.
	#
	print("Ticket Column, shorten and Categorical Variable Conversion")
	train.ticketColumn()

	# The Parch and SibSp columns are the number of parents/children and siblings and spouse traveling with passenger.
	# We convert these two values into new groupings and drop the former columns.
	# NOTE: This is specific to the Titanic data, so the method is implemented in the subclass Titanic.
	#
	print("Parch and SibSp Columns")
	train.familyColumns()

	# Next, we reduce the number of features (currently 71). We do an analysis to determine their level of contribution 
	# (importance) to predicting the label. We eliminate all features (columns) whose significance level is less than 0.01.
	# This reduces the dataset to 16 features (columns).
	#
	print("Reduce Features")
	train.reduceFeatures(0.01)

	# All the data is now real numbers. We do a final feature scaling pass of the columns so that the data across columns
	# is proportional to each other (same scale).
	#
	print("Feature Scaling")
	train.featureScaling()

	# We now uncombine the combined dataset into the traning data (891 entries) and test data (418 entries)
	#
	if combine == True:
		print("Uncombine Datasets")
		train.uncombine()

	# In this context, this will split out the x (features) train and test data, and y (label) train data into numpy arrays.
	#
	print("Split")
	train.split()

	# We instantiate a model for training using the prepared dataset.
	#
	print("Train the Model")
	model = Model(train)

	# Let's train the model using Random Forest
	#
	model.randomForest()

	# Show our predicted accuracy
	print("Predicted Accuracy")
	acc = model.accuracy()
	print(acc)

titanic("C:\\Users\\Andrew\Desktop\\train.csv", "C:\\Users\\Andrew\Desktop\\test.csv")





