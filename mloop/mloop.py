#
# Machine Learning OOP
#
# by Andrew Ferlitsch, Sept. 2017
#
# This solution is fully implemented using modern software development OOP methodology, vs. writing it as a procedural
# solution, which I see most frequently in blogs. The program is written for Python 3.
#
# This is a generalized solution and can be used for a wide variety of datasets
#
# Feel free to improve on the solution and make a pull request.
#
import sys
import numpy as np
import pandas as pd
from sklearn.preprocessing import StandardScaler
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.ensemble import RandomForestClassifier
from sklearn.cross_validation import cross_val_score

class Train(object):
	""" Class Definition for Training a Model """
	
	_training_data 	 = None	# Training Data Set as DataFrame
	_test_data     	 = None	# Test Data Set Set as DataFrame
	_combined_data 	 = None	# Training and Test Data Set are combined
	_combined_training_rows = 0	# Number of rows that are training data in combined dataset
	_label  		 = None	# Name of Label Column
	_label_index	 = -1	# Index of Label Column
	_x_training_data = None # Features in Training Data Set as numpy array
	_y_training_data = None # Labels   in Training Data Set as numpy array
	
	def __init__(self, training_data, test_data=None):
		""" Constructor
			training_data - pandas dataset or path to training dataset
			test_data     - pandas dataset or path to test dataset. If not specified, then test data is obtained as subset of training data.
		"""
		self._training_data = training_data
		self._test_data     = test_data
		
	def load(self, names=None):
		""" Load the dataset
			names - the field (column) names in dataset
		"""
		if self._training_data is None:
			sys.exit("No Training Data")
			
		# If training data is path to CSV file, read it in as a pandas dataframe
		if isinstance(self._training_data, str):
			self._training_data = self._readData(self._training_data, names)
			
		# Test data is already split out
		if self._test_data is not None:
			# If test data is path to CSV file, read it in as a pandas dataframe
			if isinstance(self._test_data, str):
				self._test_data = self._readData(self._test_data, names)
			
	def _readData(self, filename, names=None):
		""" Read in dataset as CSV file
			filename - path to CSV file
			names - list of field (column) names in CSV file
		"""
		
		# First line in CSV file has heading names
		if names is None:
			dataset = pd.read_csv(filename)
		# Otherwise, first line is data and user has specified the names of the columns
		else:
			dataset = pd.read_csv(filename, header=None, names=names)
		return dataset
		
	def setLabel(self, label):
		""" Set the name (or index) of the Label """
		
		# label column name
		if isinstance(label, str):
			self._label = label
		# label column indexd
		else:
			self._label_index = label
			
	def removeLabel(self):
		""" Remove the label from the training and test dataset """
		
		# column name
		if self._label is not None:
			self._y_training_data = self._training_data[self._label]
			if self._test_data is not None:
				# Check that label is in test data
				if self._label in self._test_data.columns:
					self._y_test_data = self._test_data[self._label]
				else:
					self._y_test_data = None

			# remove the column from the dataset
			self.dropColumn(self._label)
		# column index
		else:
			# number of columns in dataset
			ncols = self._training_data.shape[1]
		
			# label is the last column
			if self._label_index == -1:
				self._label_index = ncols - 1
				
			# extract the data
			self._y_training_data = self._training_data.iloc[:, self._label_index ].values
			
			if self._test_data is None: 
				self._y_test_data = self._test_data.iloc[:, self._label_index ].values
				
			# TODO: remove the column from the dataset
		
	def combine(self):
		""" Combine the Training and Test Data
		"""
		# remember the number of rows in the training data
		self._combined_training_rows = self._training_data.shape[0]
		
		# combine the data sets
		self._combined_data = pd.concat([self._training_data, self._test_data])
		
	def uncombine(self):
		""" Uncombine the combined Training and Test Data """
		self._training_data = self._combined_data.head(self._combined_training_rows)
		self._test_data     = self._combined_data.iloc[self._combined_training_rows:]
		
		# indicate the data has been uncombined
		self._combined_data = None
		
	def extractLabel(self, label=None):
		""" Location of the label
			label_column = column number of label (starting at zero) or column name
		"""
		# number of columns in dataset
		ncols = self._training_data.shape[1]
		
		# label is the last column
		if label is None:
			label_column = ncols - 1
		else:
			label_column = -1
		
		# label is the last column
		if label_column == (ncols - 1):
			self._x_training_data = self._training_data.iloc[:, :-1 ].values
		else:
			# label_column is column name
			if isinstance(label, str):
				label_column = self._training_data.columns.get_loc(label)
				
			ix = []
			for i in range(0, label_column):
				ix.append(i)
			for i in range(label_column + 1, ncols):
				ix.append(i)
			self._x_training_data = self._training_data.iloc[:, ix ].values

		if isinstance( label, int ):
			self._y_training_data = self._training_data.iloc[:, label_column ].values
		# use column name
		else:
			self._y_training_data = self._training_data[label]
			
		if self._test_data is not None:
			if label_column == (ncols - 1):
				self._x_test_data = self._test_data.iloc[:, :-1].values
			else:
				# label_column is column name
				if isinstance(label, str):
					# check if label in test data
					if not label in self._test_data.columns:
						self._y_test_data = None
						self._x_test_data =  self._test_data.iloc[:, :].values
						return
					label_column = self._test_data.columns.get_loc(label)
				
				ix = []
				for i in range(0, label_column):
					ix.append(i)
				for i in range(label_column + 1, ncols):
					ix.append(i)
				self._x_test_data = self._test_data.iloc[:, ix ].values

			if isinstance( label, int ):
				self._y_test_data = self._training_data.iloc[:, label_column ].values
			# use column name
			else:
				self._y_test_data = self._training_data[label]

		
	def missingValues(self, column, method, groupby=None):
		""" Replace missing values (Nan)
			column = column name
			method = replacement method (e.g., mean)
			groupby = columns to group data by for mean value calculation
		"""
		# Dataset is combined
		if self._combined_data is not None:
			self._missingValues(self._combined_data, column, method, groupby)
		else:
			if self._training_data is not None:
				self._missingValues(self._training_data, column, method, groupby)
			if self._test_data is not None:
				self._missingValues(self._test_data, column, method, groupby)
				
	def _missingValues(self, data, column, method, groupby):
		""" (internal) Replace missing values """
		if method == "drop":
			data[column].dropna(inplace=True)
		elif method == "mean":
			#data[column].fillna(self._training_data[column].mean(), inplace=True)
			data[column].fillna(self._training_data.groupby(groupby)[column].transform("mean"), inplace=True)
		else:
			data[column].fillna(method, inplace=True)
				
	def dropColumn(self, column):
		""" Drop a column in the dataframe
			column = column name
		"""
		# Dataset is combined
		if self._combined_data is not None:
			del self._combined_data[column]
		else:
			if self._training_data is not None:
				del self._training_data[column]
			if self._test_data is not None:
				if column in self._test_data.columns:
					del self._test_data[column]

	def shortenColumn(self, column, len):
		""" Shorten the contents of a column
			column = column name
			len = number of characters
		"""
		# Datasets are combined
		if self._combined_data is not None:
			self._combined_data[column] = self._combined_data[column].str[:len]
		else:
			if self._training_data is not None:
				self._training_data[column] = self._training_data[column].str[:len]
			if self._test_data is not None:
				self._test_data[column] = self._test_data[column].str[:len]
			
	def convertCategorical(self, column, value):
		""" Convert categorical variables to dummy variables (one hot encoder)
			column = column name
			value = a known categorical value 
		"""
		# Datasets are combined
		if self._combined_data is not None:
			self._combined_data = pd.get_dummies(self._combined_data, columns=[column])
		else:
			if self._training_data is not None:
				self._training_data = pd.get_dummies(self._training_data, columns=[column])
			if self._test_data is not None:
				self._test_data = pd.get_dummies(self._test_data, columns=[column])
		
		# drop one of the dummy variables to eliminate the dummy variable trap
		self.dropColumn(column + "_" + value)
			
	def genderColumn(self, column):
		""" Change gender column from categorical to binary
			column = column name
		"""
		# Datasets are combined
		if self._combined_data is not None:
			self._combined_data[column] = self._combined_data[column].map({'Female': 0, 'female': 0, 'f': 0, 'F': 0, 'Male': 0, 'male': 1, 'm': 1, 'M': 1})
		else:
			if self._training_data is not None:
				self._training_data[column] = self._training_data[column].map({'Female': 0, 'female': 0, 'f': 0, 'F': 0, 'Male': 0, 'male': 1, 'm': 1, 'M': 1})
			if self._test_data is not None:
				self._test_data[column] = self._test_data[column].map({'Female': 0, 'female': 0, 'f': 0, 'F': 0, 'Male': 0, 'male': 1, 'm': 1, 'M': 1})
			
	def ageColumn(self, age, groupby=None):
		""" Replace missing values in age column
			age - age column name
			groupby - columns to group the age data for mean value calculation
		"""
		# not grouping by other columns
		if groupby is None:
			self.missingValues(age, "mean")
			return
		
		# Dataset is combined
		if self._combined_data is not None:
			self._combined_data[age].fillna(self._combined_data.groupby(groupby)[age].transform("mean"), inplace=True)
		else:
			if self._training_data is not None:
				self._training_data[age].fillna(self._training_data.groupby(groupby)[age].transform("mean"), inplace=True)
			if self._test_data is not None:
				self._test_data[age].fillna(self._test_data.groupby(groupby)[age].transform("mean"), inplace=True)
			
		# replace any remaining NaN values
		self.ageColumn(age)
			
	def nameColumn(self, name):
		""" Find title in name column
			name = name column
		"""
		
		# a map of more aggregated titles
		Title_Dictionary = {
							"Capt":       "Officer",
							"Col":        "Officer",
							"Major":      "Officer",
							"Dr":         "Officer",
							"Rev":        "Officer",
							"Jonkheer":   "Royalty",
							"Don":        "Royalty",
							"Sir" :       "Royalty",
							"the Countess":"Royalty",
							"Dona":       "Royalty",
							"Lady" :      "Royalty",
							"Mme":        "Mrs",
							"Mlle":       "Miss",
							"Ms":         "Mrs",
							"Mr" :        "Mr",
							"Mrs" :       "Mrs",
							"Miss" :      "Miss",
							"Master" :    "Master",
							}
		# we extract the title from each name and make a new column
		if self._combined_data is not None:
			self._combined_data['Title'] = self._training_data[name].map(lambda name:name.split(',')[1].split('.')[0].strip())
		else:
			if self._training_data is not None:
				self._training_data['Title'] = self._training_data[name].map(lambda name:name.split(',')[1].split('.')[0].strip())
			if self._test_data is not None:
				self._test_data['Title'] = self._test_data[name].map(lambda name:name.split(',')[1].split('.')[0].strip())
		"""  
		# we map each title
		if self._training_data is not None:
			self._training_data['Title'] = self._training_data[name].Title.map(Title_Dictionary)
		if self._test_data is not None:
			self._test_data['Title'] = self._test_data[name].Title.map(Title_Dictionary)
		"""
			
		# Drop the name column
		self.dropColumn(name)
		
	def dateTimeColumn(self, date_time, date_sep='/'):
		""" Split (Feature Engineering) the DateTime column. 
			date_time - DateTime in format YY/MM/DD hh:mm:ss
			date_sep - date separator, such as a / or -
		"""
		# Datasets are combined
		if self._combined_data is not None:
			self._dateTimeColumn(self._combined_data, date_time, date_sep)
		else:
			if self._training_data is not None:
				self._dateTimeColumn(self._training_data, date_time, date_sep)
			if self._test_data is not None:
				self._dateTimeColumn(self._test_data, date_time, date_sep)
			
	def _dateTimeColumn(self, data, date_time, date_sep):
		# Split the date time into Date and Time
		data['Date'] = data[date_time].map(lambda date:date.split(' ')[0].strip())
		data['Time'] = data[date_time].map(lambda date:date.split(' ')[1].strip())
		# Drop the date time column
		self.dropColumn(date_time)
			
		# Split the date into Year, Month and Day
		data['Year']  = data['Date'].map(lambda date:date.split(date_sep)[0].strip())
		data['Month'] = data['Date'].map(lambda date:date.split(date_sep)[1].strip())
		data['Day']   = data['Date'].map(lambda date:date.split(date_sep)[2].strip())
		# Drop the date column
		self.dropColumn('Date')
			
		# Split the time into Hour, Minute and Second
		data['Hour']   = data['Time'].map(lambda date:date.split(':')[0].strip())
		data['Minute'] = data['Time'].map(lambda date:date.split(':')[1].strip())
		data['Second'] = data['Time'].map(lambda date:date.split(':')[2].strip())
		# Drop the time column
		self.dropColumn('Time')
		
	def latlngColumn(self, lat, lng, pts=3):
		""" Reduce Resolution into Range Buckets (Feature Engineering) for Latitude and Longitude
			lat - latitude column
			lng - longitude column
			pts - number of decimals after decimal point (3 ~ 500 ft)
		"""
		# Datasets are combined
		if self._combined_data is not None:
			self._latlngColumn(self._combined_data, lat, lng, pts)
		else:
			if self._training_data is not None:
				self._latlngColumn(self._training_data, lat, lng, pts)
			if self._test_data is not None:
				self._latlngColumn(self._test_data, lat, lng, pts)
		
	def _latlngColumn(self, data, lat, lng, pts=3):
		f = '.' + str(pts) + 'f'
		data[lat] = data[lat].map(lambda lat:format(lat, f))
		data[lng] = data[lng].map(lambda lng:format(lng, f))
		
		
	def addressBlockColumn(self, addr):
		""" Address Block : nnn block of XYZ Street OR ABC Street / XYZ Street """
		return # TODO
		self._combined_data['Street'] = self._training_data[addr].map(lambda addr:addr.split('of')[1].split('/')[0].strip())
		
	def split(self, percent=0.2):
		""" Split a training set 
			percent - percent of data that is training data
		"""
			
		# Data already split
		if self._test_data is not None:
			# Extract the data from the data frame as a numpy array
			if self._x_training_data is None:
				self._x_training_data = self._training_data.iloc[:].values
				self._x_test_data     = self._test_data.iloc[:].values
			return
			
		# split the data set (currently stored as training data) into training and test data
		self._x_training_data, self._x_test_data, self._y_training_data, self._y_test_data = train_test_split(self._training_data.iloc[:,:].values, self._y_training_data, test_size = percent, random_state = 0)

	def reduceFeatures(self, threshold):
		""" Reduce the number of features in the dataset
			n = number of features (dimensions) to keep
		"""
		# Extract the training data if it is still combined
		if self._combined_data is not None:
			self._training_data = self._combined_data.head(self._combined_training_rows)
			
		# Use Random Forest Classifier to measure contribution (importance) of each feature
		classifier = RandomForestClassifier(n_estimators=50, max_features='sqrt')
		classifier = classifier.fit(self._training_data, self._y_training_data)
		
		# Drop columns below threshold of importance
		columns = self._training_data.columns
		for i in range(0, len(classifier.feature_importances_)):
			if classifier.feature_importances_[i] < threshold:
				self.dropColumn(columns[i])
				
	def featureScaling(self):
		""" Feature Scaling
			column = name of column
		"""
		# Datasets are combined
		if self._combined_data is not None:
			# subtract the minimum value from all values
			self._combined_data -= self._combined_data.min()
			# divide by the maximum value
			self._combined_data /= self._combined_data.max()
		else:
			self._training_data -= self._training_data.min()
			self._training_data /= self._training_data.max()
			if self._test_data is not None:
				self._test_data -= self._test_data.min()
				self._test_data /= self._test_data.max()

class Model(object):
	""" Class Definition for Executing a Model to make Predictions """
	
	_trained = None		# Trained Model
	_x_batch   = None		# A batch (subset) of data to train on
	_y_batch   = None
	
	def __init__(self, trained=None):
		""" Constructor
			trained - trained model
		"""
		self._trained = trained
		
	def setBatch(self, nrows):
		""" """
		_x_batch = self._trained._x_training_data[:nrows,:]
		_y_batch = self._trained._y_training_data[:nrows]
		
	def linear(self):
		""" Linear Regression """
		model = LinearRegression()
		
		if self._x_batch is not None:
			model.fit(self._x_batch, self._y_batch)
			self._y_pred = model.predict(self._trained._x_test_data)
		else:
			model.fit(self._trained._x_training_data, self._trained._y_training_data)
			self._y_pred = model.predict(self._trained._x_test_data)
		
	def randomForest(self):
		""" Random Forest Classifier """
		parameters = {'bootstrap': False, 'min_samples_leaf': 3, 'n_estimators': 50, 
                  'min_samples_split': 10, 'max_features': 'sqrt', 'max_depth': 6}
    
		model = RandomForestClassifier(**parameters)
		if self._x_batch is not None:
			model.fit(self._x_batch, self._y_batch)
			xval = cross_val_score( model, self._x_batch, self._y_batch, cv=5, scoring='accuracy')
		else:
			model.fit(self._trained._x_training_data, self._trained._y_training_data)
			xval = cross_val_score( model, self._trained._x_training_data, self._trained._y_training_data, cv=5, scoring='accuracy')

		self._accuracy = np.mean(xval)
		
	def accuracy(self):
		""" Return the Accuracy of the Trained Model """
		return self._accuracy
