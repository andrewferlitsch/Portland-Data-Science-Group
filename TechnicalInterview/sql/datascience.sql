# Reviewed
#----------------------------------------------------------------------
# Initialization
#----------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS questions
(
  id        INT          NOT NULL PRIMARY KEY auto_increment,
  category  VARCHAR(16)  NOT NULL,
  question  VARCHAR(256) NOT NULL,
  answer    VARCHAR(256) NOT NULL,
  rank      TINYINT 	 NOT NULL DEFAULT 1,
  toggle	TINYINT		 NOT NULL DEFAULT 1,

  INDEX(category),
  INDEX(rank)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE utf8_bin;

DELETE FROM questions WHERE category = 'Data Science';

#----------------------------------------------------------------------
# Data Science
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is Linear Regression?',
    'A statistical technique where the score of a variable Y is predicted from the score of a second variable X. X is referred to as the predictor variable and Y as the criterion variable.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is data wrangling?',
    'Cleaning up messy (bad) data before it is used in an analysis.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What are Recommender Systems?',
    'A subclass of information filtering systems that are meant to predict the preferences or ratings that a user would give to a product.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'Which technique is used to predict categorical responses?',
    'Classification technique is used widely in mining for classifying data sets.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is interpolation?',
    'A method of constructing new data points within the range of a discrete set of known data points.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is extrapolation?',
    'Estimating a value based on extending a known sequence of values or facts beyond the area that is certainly known.',
    1
  );

INSERT INTO questions (category, question, answer, rank, toggle) 
  VALUES (
    'Data Science',
    'What is the difference between univariate, bivariate and multivariate analysis?',
    'These are descriptive statistical analysis techniques which can be differentiated based on the number of variables involved: univariate (one), bivariate (two), multivariate (three or more)',
    2,
	0
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is Collaborative filtering?',
    'The process of filtering used by most of the recommender systems to find patterns or information by collaborating viewpoints, various data sources and multiple agents.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What does P-value signify about the statistical data?',
    'This value is used to determine the significance of results after a hypothesis test in statistics. P-value helps the readers to draw conclusions and is always between 0 and 1.',
    2
  );

INSERT INTO questions (category, question, answer, rank, toggle) 
  VALUES (
    'Data Science',
    'Do gradient descent methods always converge to same point?',
    'No, in some cases it reaches a local minima or a local optima point.',
    2,
	0
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is A/B Testing?',
    'A randomized experiment of switching between two variables A and B, and measuring for an increased outcome, such as a higher click thru rate on a web page.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is the formula for R-square?',
    '1 - (Residual Sum of Squares / Total Sum of Squares)',
    2
  );

INSERT INTO questions (category, question, answer, rank, toggle) 
  VALUES (
    'Data Science',
    'What is an Eigenvalue and Eigenvector?',
    'An eigenvector non-zero vector that does not change its direction when that linear transformation is applied to it. Geometrically an eigenvector, corresponding to a real nonzero eigenvalue, points in a direction that is stretched by the transformation and the eigenvalue is the factor by which it is stretched.',
    3,
	0
  );
  
INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is Supervised Learning?',
    'A learning method where an algorithm that learns something from the training data so that the knowledge can be applied to the test data.',
    3
);

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is Unsupervised Learning?',
    'A learning method where an algorithm does not learn anything beforehand because there is no response variable or any training data.',
    3
);

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is Cluster Sampling?',
    'A probability sampling technique where each sampling unit is a collection, or cluster of elements.',
    3
  );

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is Systematic Sampling?',
    'A statistical sampling technique where elements are selected from an ordered sampling frame. ',
    3
  );

