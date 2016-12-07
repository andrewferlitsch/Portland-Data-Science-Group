technical.controller( 'pythonCtrl', function( $scope ) {
	$scope.subject 	= "Python";
	$scope.questions = [{ question: "What does the keyword lambda do?",
						  answer: ""
						},
						{ question: "What does the keyword yield do?",
						  answer: ""
						},
						{ question: "How are blocks of code delineated (e.g, statements for an if block)?",
						  answer: "Blocks of code are denoted by line indentation."
						},
						{ question: "What is the syntax of a comment?",
						  answer: "#"
						},
						{ question: "What are the five standard data types?",
						  answer: "Numbers, String, List, Tuple, Dictionary"
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
				  "	<li ng-repeat='question in random'> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='python'>Suggest A Better Answer</button><br/>Correct <input class='correct' type='checkbox'/><br/><br/></li>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='python'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='python'>Suggest a Question</button>" +
				  "</div>"
	}
});