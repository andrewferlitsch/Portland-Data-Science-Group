technical.controller( 'cCtrl', function( $scope ) {
	$scope.subject 	= "C";
	$scope.questions = [{ question: "What does the keyword volatile mean?",
						  answer: ""
						},
						{ question: "What is a #include?",
						  answer: ""
						},
						{ question: "Describe what a setjmp/longjmp do.",
						  answer: ""
						},
						{ question: "Give an example of allocating and freeing memory.",
						  answer: ""
						},
						{ question: "Explain an example of reading/writing a file.",
						  answer: ""
						}
					  ];
	$scope.random = pick3( $scope.questions );
	$scope.show = false;
})
.directive( "questionsC", function() {
	return {
		restrict: 'A',
		template: "<h1 style='text-align: center' ng-click='show=!show'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span><br/>Correct <input class='c-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "</div>"
	}
});