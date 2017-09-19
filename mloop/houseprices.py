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

class HousePrice(Train):
	""" Subclass for dataset preparation specific to House Prices Data """
	
	def __init__(self, train_data, test_data=None):
		super().__init__(train_data, test_data)
		
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
	train = HousePrice(train_data, test_data)
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
	
	# The YearBuilt column is the year the house was built. Convert the year into group ranges: New, 2010, 2000, 1990, 
	# 1980, Old, and Historic
	#
	print("Convert YearBuilt into Group Ranges")
	train.yearBuiltColumn("YearBuilt")
	
	# The YearRemodAdd column is the year the house was remodeled or addition added. Convert the year into group ranges: New, 2010, 2000, 1990, 
	# 1980, Old, and Historic
	#
	print("Convert YearRemodAdd into Group Ranges")
	train.yearBuiltColumn("YearRemodAdd")
	
	# The RoofStyle column is the style of roof. We will drop this column
	#
	print("Drop RoofStyle")
	train.dropColumn("RoofStyle")
	
	# The RoofMatl column is the material the roof is made of. We will drop this column
	#
	print("Drop RoofMatl")
	train.dropColumn("RoofMatl")
	
	# The Exterior1st column is the exterior covering. We will drop this column
	#
	print("Drop Exterior1st")
	train.dropColumn("Exterior1st")
	
	# The Exterior1st column is the 2nd exterior covering. We will drop this column
	#
	print("Drop Exterior2nd")
	train.dropColumn("Exterior2nd")
	
	# The MasVnrType column is the masonary veener type. We will drop this column
	#
	print("Drop MasVnrType")
	train.dropColumn("MasVnrType")
	
	# The MasVnrArea column is the masonary veener type. We will drop this column
	#
	print("Drop MasVnrArea")
	train.dropColumn("MasVnrArea")
	
	# The ExterQual column is the quality of the exterior. We will drop this column
	#
	print("Drop ExterQual")
	train.dropColumn("ExterQual")
	
	# The ExterCond column is the condition of the exterior. We will drop this columnWe replace the column with a dummy variable conversion, and drop
	# one of the dummy variables (ExterQual_TA) to eliminate the dummy variable trap.
	#
	print("Convert Caregorical Variable ExterCond")
	train.convertCategorical("ExterCond", "TA")
	
	# The BsmtQual column is the quality of the basement. We will drop this column
	#
	print("Drop BsmtQual")
	train.dropColumn("BsmtQual")
	
	# The BsmtCond column is the condition of the basement. We will drop this column
	#
	print("Drop BsmtCond")
	train.dropColumn("BsmtCond")
	
	# The BsmtExposure column is the walkout or garden walls. We will drop this column
	#
	print("Drop BsmtExposure")
	train.dropColumn("BsmtExposure")
	
	# The BsmtFinType1 column is the quality of the basement finished area. We will drop this column
	#
	print("Drop BsmtFinType1")
	train.dropColumn("BsmtFinType1")
	
	# The BsmtFinType2 column is the quality of the basement 2nd finished area. We will drop this column
	#
	print("Drop BsmtFinType2")
	train.dropColumn("BsmtFinType2")
	
	# The BsmtFinSF1 and BsmtFinSF2 columns are the sqft of the finished basement area. We will add these together.
	#
	print("Combine BsmtFinSF1 and BsmtFinSF2")
	train.addColumns("BsmtFinSF1", "BsmtFinSF2")
	
	# The BsmtUnfSF column is the sqft of unfinished basement. We will drop this column
	#
	print("Drop BsmtUnfSF")
	train.dropColumn("BsmtUnfSF")
	
	# The TotalBsmtSF column is the total square feet of the basement. We will drop this column
	#
	print("Drop TotalBsmtSF")
	train.dropColumn("TotalBsmtSF")

	# The Heating column is the type of Heating. We will drop this columnWe replace the column with a dummy variable conversion, and drop
	# one of the dummy variables (Heating_GasA) to eliminate the dummy variable trap.
	#
	print("Convert Caregorical Variable Heating")
	train.convertCategorical("Heating", "GasA")
	
	# The HeatingQual column is the quality of heating. We will drop this column
	#
	print("Drop HeatingQC")
	train.dropColumn("HeatingQC")
	
	# The CentralAir column is whether there is central air conditioning. We will drop this column
	#
	print("Drop CentralAir")
	train.dropColumn("CentralAir")
	
	# The Electrical column is the type of electrical. We will drop this column
	#
	print("Drop Electrical")
	train.dropColumn("Electrical")
	
	# Keep first floor Square Footage (1stFlrSq)
	
	# Keep second floor Square Footage (2ndFlrSq)
	
	# The LowQualFinSF column is the square footage of low quality finished area. We will drop this column
	#
	print("Drop LowQualFinSF")
	train.dropColumn("LowQualFinSF")
	
	# Keep GrLivArea (Above Ground Live Area)
	
	# The BsmtFullBath column is the number of full baths in the basement. We will drop this column
	#
	print("Drop BsmtFullBath")
	train.dropColumn("BsmtFullBath")
	
	# The BsmtHalfBath column is the number of half baths in the basement. We will drop this column
	#
	print("Drop BsmtHalfBath")
	train.dropColumn("BsmtHalfBath")
	
	# Keep Full Bathrooms (FullBath)
	
	# Keep Half Baths (HalfBath)
	
	# Keep Bedrooms
		
	# The KitchenAbvGr column is the number of kitchens. We will drop this column
	#
	print("Drop KitchenAbvGr")
	train.dropColumn("KitchenAbvGr")
		
	# The KitchenQual column is the quality of the kitchen. We will drop this column
	#
	print("Drop KitchenQual")
	train.dropColumn("KitchenQual")
		
	# The TotRmsAbvGrd column is the number of rooms above ground. We will drop this column
	#
	print("Drop TotRmsAbvGrd")
	train.dropColumn("TotRmsAbvGrd")
		
	# The Functional column is a rating on how functional the house is. We will drop this column
	#
	print("Drop Functional")
	train.dropColumn("Functional")
		
	# The Fireplaces column is the number of fireplaces. We will drop this column
	#
	print("Drop Fireplaces")
	train.dropColumn("Fireplaces")
		
	# The FireplaceQu column is the quality of the fireplaces. We will drop this column
	#
	print("Drop FireplaceQu")
	train.dropColumn("FireplaceQu")
	
	# The GarageType is the type of garage. For missing values, we will set to the most common value of attached.
	# Then we will do categorical conversion.
	#
	print("Replace missing values in Garage Type")
	train.missingValues("GarageType", "Attchd")
	print("Categorical Conversion of Garage Type")
	train.convertCategorical("GarageType", "Attchd")
		
	# The GarageYrBlt column is year the garage was built. We will drop this column
	#
	print("Drop GarageYrBlt")
	train.dropColumn("GarageYrBlt")
		
	# The GarageFinish column is whether the garage is finished. We will drop this column
	#
	print("Drop GarageFinish")
	train.dropColumn("GarageFinish")
		
	# The GarageCond column is condition of the garage. We will drop this column
	#
	print("Drop GarageCond")
	train.dropColumn("GarageCond")
		
	# The GarageArea column is the sqft of the garage. We will drop this column
	#
	print("Drop GarageArea")
	train.dropColumn("GarageArea")
		
	# The GarageQual column is the quality of the garage. We will drop this column
	#
	print("Drop GarageQual")
	train.dropColumn("GarageQual")
	
	# Keep Garage Cars
	
	# The PaveDrive column is whether the driveway is paved. We will drop this column
	#
	print("Drop PavedDrive")
	train.dropColumn("PavedDrive")
	
	# The WoodDeckSF column is the sqft of deck. We will drop this column.
	#
	print("Drop WoodDeckSF")
	train.dropColumn("WoodDeckSF")
	
	# The OpenPorchDeckSF column is the sqft of the porch. We will drop this column.
	#
	print("Drop OpenPorchSF")
	train.dropColumn("OpenPorchSF")
	
	# The EnclosedPorch column is the sqft of the enclosed porch. We will drop this column.
	#
	print("Drop EnclosedPorch")
	train.dropColumn("EnclosedPorch")
	
	# The 3SsnPorch column is the sqft of the three season porch. We will drop this column.
	#
	print("Drop 3SsnPorch")
	train.dropColumn("3SsnPorch")
	
	# The ScreenPorch column is the sqft of the porch. We will drop this column.
	#
	print("Drop ScreenPorch")
	train.dropColumn("ScreenPorch")
	
	# The PoolArea we will keep.
	
	# The PoolQC is the quality of the pool. We will drop this column.
	print("Drop PoolQC")
	train.dropColumn("PoolQC")
	
	# The Fence is the quality of the fence. We will drop this column.
	print("Drop Fence")
	train.dropColumn("Fence")
	
	# The MiscFeature are misc features. We will drop this column.
	print("Drop MiscFeature")
	train.dropColumn("MiscFeature")
	
	# The MiscVal are the value of the misc features. We will drop this column.
	print("Drop MiscVal")
	train.dropColumn("MiscVal")
	
	# The MoSold is the month sold. We will drop this column.
	print("Drop MoSold")
	train.dropColumn("MoSold")
	
	# The YrSold is the year sold. We will drop this column.
	print("Drop YrSold")
	train.dropColumn("YrSold")
	
	# The SaleType is the type of sale. We will drop this column.
	print("Drop SaleType")
	train.dropColumn("SaleType")
	
	# The SaleCond is the condition of sale. We will drop this column.
	print("Drop SaleCondition")
	train.dropColumn("SaleCondition")
	
	# The Foundation is the type of foundation. We will drop this column.
	print("Drop Foundation")
	train.dropColumn("Foundation")
	
	# Next, we reduce the number of features (currently 113). We do an analysis to determine their level of contribution 
	# (importance) to predicting the label. We eliminate all features (columns) whose significance level is less than 0.01.
	# This reduces the dataset to 20 features (columns).
	#
	print("Reduce Features")
	train.reduceFeatures(0.01)
	
	# All the data is now real numbers. We do a final feature scaling pass of the columns so that the data across columns
	# is proportional to each other (same scale).
	#
	print("Feature Scaling")
	train.featureScaling()

	# We now uncombine the combined dataset into the traning data and test data
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
	model.randomForestRegression()

	# Show our predicted accuracy
	print("Predicted Accuracy")
	acc = model.accuracy()
	print(acc)

housePrices("C:\\Users\\Andrew\Desktop\\train.csv", "C:\\Users\\Andrew\Desktop\\test.csv")





