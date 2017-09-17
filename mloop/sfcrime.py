#
# Machine Learning OOP - San Francisco Crime Dataset/Kaggle
#
# by Andrew Ferlitsch, Sept. 2017
#
# This solution is fully implemented using modern software development OOP methodology, vs. writing it as a procedural
# solution, which I see most frequently in blogs. The program is written for Python 3.
#
# Feel free to improve on the solution and make a pull request.
#
from mloop import Train
from mloop import Model

def sfCrime(train_data, test_data=None, level=0, batch=0):
	""" Kaggle/San Francisco Crime Data - Predict Crime 
		level 0 - Use year, month, hour, day of the week
		level 1 - Use year, month, hour, day of the week, police district
		level > 1 ...
	"""
	global train, model

	# San Francisco Crime Data
	combine = True	

	train = Train(train_data, test_data)
	print("Load Dataset")
	train.load()

	# Set which column is the label (what to learn) and then remove the label column from the training data.
	#
	print("Set the Label")
	train.setLabel("Category")
	print("Remove the Label")
	train.removeLabel()

	# The two datasets will be combined into one.
	#
	if combine == True:
		print("Combine Datasets")
		train.combine()
		
	# Remove the Id column. It is just a sequential numerical ordering. Therefore it does not contribute as a feature.
	# It would also be a detriment since entry with Id 1000 would be 1000 times more significant than entry with Id 1.
	#
	print("Drop Id")
	train.dropColumn("Id")
		
	# Split the DateTime field into Year, Month, Day, Hour, Minute and Second
	#
	print("Split Dates")
	train.dateTimeColumn("Dates", "-")
	
	# Drop the new fields Day, Minute and SecondD
	print("Drop Day Minute and Second columns")
	train.dropColumn("Day")
	train.dropColumn("Minute")
	train.dropColumn("Second")
	
	# The DaysOfWeek is the day of the week. We replace the column with a dummy variable conversion, and drop one of the dummy variables 
	# (DaysOfWeek_SUNDAY) to eliminate the dummy variable trap.
	#
	print("Categorical Variable Conversion for DayOfWeek")
	train.convertCategorical("DayOfWeek", "Sunday")
	
	# Resolution is the action taken by the Police. The field is not in the test data, so we will drop it.
	#
	print("Drop Resolution")
	train.dropColumn("Resolution")
	
	# Description is an entry by the police officer. The field is not in the test data, so we will drop it.
	#
	print("Drop Descript")
	train.dropColumn("Descript")
	
	# The column PdDistrict is the police district. 
	# Use it in level 1
	#
	if level == 1:
		print("Categorical Variable Conversion for PdDistrict")
		train.convertCategorical("PdDistrict", "NORTHERN")
	# Drop it in all other levels
	else:
		print("Drop PdDistrict")
		train.dropColumn("PdDistrict")
	
	# The column X and Y are the longitude and latitude. 
	# For level > 2, we want to group them into larger geographic areas, such as several'
	# square blocks. Reducing the decimal point to 3, should give a approxiamate 500 x 500 sqft area.
	#
	if level > 2:
		print("Shorten X and Y")
		train.latlngColumn("X", "Y", 3)
		
		# Convert the lat and lng into categorical variables
		print("Categorical Variable Conversion for X and Y")
		train.convertCategorical("X", "-122.426")
		train.convertCategorical("Y", "37.775")
	# Drop it for all other levels
	else:
		print("Drop X and Y")
		train.dropColumn("X")
		train.dropColumn("Y")
	
	# The Address column is an alternate to coordinate (lat,lng). 
	# Use it in Level 2.
	#
	if level == 2:
		print("Extract Street Name")
		train.addressBlockColumn("Address")
	else:
		print("Drop Address")
		train.dropColumn("Address")
	
	# All the data is now real numbers. We do a final feature scaling pass of the columns so that the data across columns
	# is proportional to each other (same scale).
	#
	#print("Feature Scaling")
	#train.featureScaling()

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
	
	if batch != 0:
		model.setBatch(batch)

	# Let's train the model using Random Forest
	#
	model.randomForest()

	# Show our predicted accuracy
	print("Predicted Accuracy")
	acc = model.accuracy()
	print(acc)

sfCrime("C:\\Users\\Andrew\Desktop\\train.csv", "C:\\Users\\Andrew\Desktop\\test.csv", 0, 10000)




