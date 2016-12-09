technical.controller( 'pythonCtrl', function( $scope ) {
	$scope.subject 	= "Python";
	$scope.questions = [{ question: "How are blocks of code delineated (e.g, statements for an if block)?",
						  answer: "Blocks of code are denoted by line indentation.",
						  rank: 1,
						  id: 103
						},
						{ question: "What is the syntax of a comment?",
						  answer: "#",
						  rank: 1,
						  id: 104
						},
						{ question: "What are the five standard data types?",
						  answer: "Numbers, String, List, Tuple, Dictionary",
						  rank: 1,
						  id: 105
						},
						{ question: "What does the keyword yield do?",
						  answer: "",
						  rank: 2,
						  id: 106
						},
						{ question: "What is a dictionary?",
						  answer: "A dictionary is an associative array (or hash). The key can be any data type. " +
								  "Dictionaries are enclosed in {} braces and values are accessed thru square [] brackets.",
						  rank: 2,
						  id: 107
						},
						{ question: "What does the keyword lambda do?",
						  answer: "",
						  rank: 3,
						  id: 108
						}
					  ];
	$scope.random 	= pick3( $scope.questions );
	$scope.show 	= false;
	$scope.answers 	= false;
})
.directive( "questionsPython", function() {
	return {
		restrict: 'A',
		template: "<a name='python'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#python\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<button class='w3-btn w3-teal w3-round w3-tiny' ng-click='answers=!answers'>Show Answers</button>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'><span class='w3-tooltip rank' name='python' id='{{question.id}}'>Rank {{question.rank}} <span class='w3-text w3-tag w3-khaki w3-round w3-small'>Click to Suggest Another Ranking</span></span> {{question.question}}<br/><br/>" +
				  "	<span ng-show='answers'><span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='python' id='{{question.id}}'>Suggest A Better Answer</button><br/></span>Correct <input class='correct' type='checkbox'/><br/><br/></li>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='python'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='python'>Suggest a Question</button>" +
				  "</div>"
	}
});