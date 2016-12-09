technical.controller( 'pythonCtrl', function( $scope ) {
	$scope.subject 	= "Python";
	$scope.questions = [{ question: "How are blocks of code delineated (e.g, statements for an if block)?",
						  answer: "Blocks of code are denoted by line indentation.",
						  rank: 1
						},
						{ question: "What is the syntax of a comment?",
						  answer: "#",
						  rank: 1
						},
						{ question: "What are the five standard data types?",
						  answer: "Numbers, String, List, Tuple, Dictionary",
						  rank: 1
						},
						{ question: "What does the keyword yield do?",
						  answer: "",
						  rank: 2
						},
						{ question: "What is a dictionary?",
						  answer: "A dictionary is an associative array (or hash). The key can be any data type. " +
								  "Dictionaries are enclosed in {} braces and values are accessed thru square [] brackets.",
						  rank: 2
						},
						{ question: "What does the keyword lambda do?",
						  answer: "",
						  rank: 3
						}
					  ];
	$scope.random = pick3( $scope.questions );
	$scope.show = false;
})
.directive( "questionsPython", function() {
	return {
		restrict: 'A',
		template: "<a name='python'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#python\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'><span class='rank'>Rank {{question.rank}}</span> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='python'>Suggest A Better Answer</button><br/>Correct <input class='correct' type='checkbox'/><br/><br/></li>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='python'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='python'>Suggest a Question</button>" +
				  "</div>"
	}
});