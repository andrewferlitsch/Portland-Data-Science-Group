#
# Machine Learning OOP - Kaggle/House Prices Dataset
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

def housePrices(train_data, test_data=None):
	""" Kaggle/House Prices Dataset - Predict Sale Price """
	global train, model
	
	# For the house prices dataset, we start by combining the training and test data into one dataset and do the data preparation
	# on the combined dataset. Later (at end), we will separate them back into the training and test data set.
	#
	combine = True	

	# Instantiate a training object, passing in the paths to the training and test data,
	# and then load (read) the data into a panda Dataframe. Throughout the data preparation process, the data is kept as 
	# a panda dataframe.
	#
	train = Train(train_data, test_data)
	print("Load Dataset")
	train.load()

	# Set which column is the label (what to learn) and then remove the label column from the training data.
	#
	print("Set the Label")
	train.setLabel("SalePrice")
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
	
	
	# The MSSubClass column is the building class. We replace the column with a dummy variable conversion, and drop
	# one of the dummy variables (MSSubClass_20) to eliminate the dummy variable trap.
	#
	print("Categorical Variable Conversion for MSSubClass")
	train.convertCategorical("MSSubClass", "20")
	
	# The MSZoning column is the zoning class. We replace the column with a dummy variable conversion, and drop
	# one of the dummy variables (MSZoning_RL) to eliminate the dummy variable trap.
	#
	print("Categorical Variable Conversion for MSZoning")
	train.convertCategorical("MSZoning", "RL")
	
	# The LotFrontage column has a large number of missing values. We could replace it with the mean average of all the remaining 
	# non-missing entries. Instead, we calculate the mean value by grouping according to the lot shape
	# TODO: This should be a custom version, which considers the lot size as well.
	print("Replace NaN in LotFrontage")
	train.missingValues("LotFrontage", "mean", [ "LotShape" ])
	
	# The LotArea is okay. All entries have a real value.
	 
	# The Street column indicates if the street is paved or gravel. We replace the column with a dummy variable conversion, and drop
	# one of the dummy variables (Street_Pave) to eliminate the dummy variable trap.
	#
	print("Categorical Variable Conversion for Street")
	train.convertCategorical("Street", "Pave")
	
	# The Alley column describes if the alley is paved or gravel. It has a lot of missing values. We will assume that abs
	# missing value means it has no alley. Then we will do a categorical conversion.
	#
	print("Replace NaN in Alley")
	train.missingValues("Alley", "None")
	print("Categorical Variable Conversion for Alley")
	train.convertCategorical("Alley", "None")
	
	# The LotShape column is the shape of the lot. We replace the column with a dummy variable conversion, and drop
	# one of the dummy variables (LotShape_Reg) to eliminate the dummy variable trap.
	#
	print("Categorical Variable Conversion for LotShape")
	train.convertCategorical("LotShape", "Reg")
	
	# The LandContour column is the contour of the lot (level, bank, etc). We replace the column with a dummy variable conversion, and drop
	# one of the dummy variables (LandContour_Bnk) to eliminate the dummy variable trap.
	#
	print("Categorical Variable Conversion for LandContour")
	train.convertCategorical("LandContour", "Bnk")
	
	# The Utilities column is the type of utility service. There are two missing values; we will replace them the most
	# common value - AllPub. Then we will do a categorical conversion.
	#
	print("Replace Missing Values in Utilities")
	train.missingValues("Utilities", "AllPub")
	print("Categorical Variable Conversion for Utilities")
	train.convertCategorical("Utilities", "AllPub")
	
	# The LotConfig is the lot configuration. We replace the column with a dummy variable conversion, and drop
	# one of the dummy variables (LotConfig_Inside) to eliminate the dummy variable trap.
	#
	print("Categorical Variable Conversion for LotConfig")
	train.convertCategorical("LotConfig", "Inside")
	
	# The LandSlope is the slope of the property. We replace the column with a dummy variable conversion, and drop
	# one of the dummy variables (Landslope_Gtl) to eliminate the dummy variable trap.
	#
	print("Categorical Variable Conversion for LandSlope")
	train.convertCategorical("LandSlope", "Gtl")
	
	# The Neighborhood is the neighborhood where the property is located. We replace the column with a dummy variable conversion, and drop
	# one of the dummy variables (Neighborhood_Veenker) to eliminate the dummy variable trap.
	#
	print("Categorical Variable Conversion for LandSlope")
	train.convertCategorical("Neighborhood", "Veenker")
	
	# The Condition1 column is the proximity to a main road. We will drop this column
	#
	print("Drop Condition1")
	train.dropColumn("Condition1")
	
	# The Condition2 column is the proximity to a second main road. We will drop this column
	#
	print("Drop Condition2")
	train.dropColumn("Condition2")
	
	# The BldgType column is the type of building (e.g. single family). We replace the column with a dummy variable conversion, and drop
	# one of the dummy variables (BldgType_1Fam) to eliminate the dummy variable trap.
	#
	print("Categorical Variable Conversion for BldgType")
	train.convertCategorical("BldgType", "1Fam")
	
	# The HouseStype column is the number of stories. We replace the column with a dummy variable conversion, and drop
	# one of the dummy variables (HouseStyle_1Story) to eliminate the dummy variable trap.
	#
	print("Categorical Variable Conversion for HouseStyle")
	train.convertCategorical("HouseStyle", "1Story")
	
	# The OverallQual column is a rating of the overall quality of material and finish. We will leave it as is.
	
	# The OverallCond column is a rating of the overall condition. We will leave it as is.
	
	# YearBuilt: TODO - reduce into groups

housePrices("C:\\Users\\Andrew\Desktop\\train.csv", "C:\\Users\\Andrew\Desktop\\test.csv")





