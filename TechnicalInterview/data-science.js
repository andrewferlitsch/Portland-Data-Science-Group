technical.controller( 'dataScienceCtrl', function( $scope ) {
	$scope.subject 	= "Data Science";
	$scope.questions = [{ question: "What is Linear Regression?",
						  answer: "Linear regression is a statistical technique where the score of a variable Y is predicted from the score of a second variable X. " +
								  "X is referred to as the predictor variable and Y as the criterion variable.",
						  rank: 1,
						  id: 212
						},
						{ question: "What is data wrangling?",
						  answer: "Cleaning up messy (bad) data before it is used in an analysis.",
						  rank: 1,
						  id: 213
						},
						{ question: "What are Recommender Systems?",
						  answer: "A subclass of information filtering systems that are meant to predict the preferences or ratings that a user would give to a product.",
						  rank: 1,
						  id: 214
						},
						{ question: "Which technique is used to predict categorical responses?",
						  answer: "Classification technique is used widely in mining for classifying data sets.",
						  rank: 1,
						  id: 215
						},
						{ question: "What is interpolation?",
						  answer: "A method of constructing new data points within the range of a discrete set of known data points.",
						  rank: 1,
						  id: 217
						},
						{ question: "What is extrapolation?",
						  answer: "Estimating a value based on extending a known sequence of values or facts beyond the area that is certainly known.",
						  rank: 1,
						  id: 218
						},
						{ question: "What is the difference between univariate, bivariate and multivariate analysis?",
						  answer: "These are descriptive statistical analysis techniques which can be differentiated based on the number of variables involved: " +
								  "univariate (one), bivariate (two), multivariate (three or more)",
						  rank: 2,
						  id: 216
						},
						{ question: "What is Collaborative filtering?",
						  answer: "The process of filtering used by most of the recommender systems to find patterns or information by collaborating viewpoints, various data sources and multiple agents.",
						  rank: 2,
						  id: 219
						},
						{ question: "What does P-value signify about the statistical data?",
						  answer: "P-value is used to determine the significance of results after a hypothesis test in statistics. P-value helps the readers to draw conclusions and is always between 0 and 1.",
						  rank: 2,
						  id: 221
						},
						{ question: "Do gradient descent methods always converge to same point?",
						  answer: "No, in some cases it reaches a local minima or a local optima point.",
						  rank: 2,
						  id: 222
						},
						{ question: "What is A/B Testing?",
						  answer: "A randomized experiment of switching between two variables A and B, and measuring for an increased outcome, " +
								  "such as a higher click thru rate on a web page.",
						  rank: 2,
						  id: 224
						},
						{ question: "What is the formula for R-square?",
						  answer: "1 - (Residual Sum of Squares/ Total Sum of Squares)",
						  rank: 2,
						  id: 226
						},
						{ question: "What is an Eigenvalue and Eigenvector?",
						  answer: "An eigenvector non-zero vector that does not change its direction when that linear transformation is applied to it. " +
								  "Geometrically an eigenvector, corresponding to a real nonzero eigenvalue, points in a direction that is stretched by the transformation and the eigenvalue is the factor by which it is stretched.",
						  rank: 3,
						  id: 225
						},
						{ question: "What is the difference between Supervised Learning an Unsupervised Learning?",
						  answer: "If an algorithm learns something from the training data so that the knowledge can be applied to the test data, then it is referred to as Supervised Learning. " +
								  "If the algorithm does not learn anything beforehand because there is no response variable or any training data, then it is referred to as unsupervised learning.",
						  rank: 3,
						  id: 223
						},
						{ question: "What is the difference between Cluster and Systematic Sampling?",
						  answer: "Cluster Sample is a probability sample where each sampling unit is a collection, or cluster of elements. " +
								  "Systematic sampling is a statistical technique where elements are selected from an ordered sampling frame. ",
						  rank: 3,
						  id: 220
						}
					  ];
	$scope.random 	= pick3( $scope.questions );
	$scope.show 	= false;
	$scope.answers 	= false;
})
.directive( "questionsDataScience", function() {
	return {
		restrict: 'A',
		template: "<a name='datascience'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#datascience\"'>&#9205; {{subject}}</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<button class='w3-btn w3-teal w3-round w3-tiny' ng-click='answers=!answers'>Show Answers</button>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank' name='datascience' id='{{question.id}}'>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span ng-show='answers'><span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='datascience' id='{{question.id}}'>Suggest A Better Answer</button><br/></span>Correct <input class='datascience-correct' type='checkbox'/><br/><br/></li>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='datascience'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='datascience'>Suggest a Question</button>" +
				  "</div>"
	}
});