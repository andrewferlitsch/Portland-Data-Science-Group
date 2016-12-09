technical.controller( 'rCtrl', function( $scope ) {
	$scope.subject 	= "R";
	$scope.questions = [{ question: "What is R?",
						  answer: "A statistical programming language.",
						  rank: 1
						},
						{ question: "What are the three assignment operators in R?",
						  answer: "equal, leftward (<-), and rightward (->)",
						  rank: 1
						},
						{ question: "What is a data frame?",
						  answer: "Data frames are tabular data objects. Unlike a matrix in data frame each column can contain different modes of data. The first column can be numeric while the second column can be character and third column can be logical. It is a list of vectors of equal length.",
						  rank: 1
						},
						{ question: "What are the common builtin types of R-objects?",
						  answer: "vectors, arrays, matrices, lists, factors, data frames",
						  rank: 2
						},
						{ question: "What are the six data types of a vector?",
						  answer: "logical, numeric, integer, complex, character, raw",
						  rank: 2
						},
						{ question: "How do you create a data frame?",
						  answer: "Data Frames are created using the data.frame() function.",
						  rank: 2
						},
						{ question: "How do I find all variables starting with the pattern \"ab\"?",
						  answer: "ls(pattern = \"ab\")",
						  rank: 2
						},
						{ question: "Describe Data Shaping",
						  answer: "",
						  rank: 3
						},
					  ];
	$scope.random 	= pick3( $scope.questions );
	$scope.show 	= false;
	$scope.answers 	= false;
})
.directive( "questionsR", function() {
	return {
		restrict: 'A',
		template: "<a name='r'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#r\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<button class='w3-btn w3-teal w3-round w3-tiny' ng-click='answers=!answers'>Show Answers</button>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank' name='r'>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span ng-show='answers'><span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='r'>Suggest A Better Answer</button><br/></span>Correct <input class='correct' type='checkbox'/><br/><br/></li>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='r'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='r'>Suggest a Question</button>" +
				  "</div>"
	}
});