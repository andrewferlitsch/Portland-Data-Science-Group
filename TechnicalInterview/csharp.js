technical.controller( 'csharpCtrl', function( $scope ) {
	$scope.subject 	= "C##";
	$scope.questions = [{ question: "Describe how try, catch and finally work.",
						  answer: ""
						},
						{ question: "Name two ways the using statement is used.",
						  answer: "As a directive, it is used to create an alias for a namespace or to import types defined in other namespaces. " +
								  "As a statement, it defines a scope at the end of which an object will be disposed."
						},
						{ question: "What is managed code?",
						  answer: ""
						},
						{ question: "What does a LINQ statement do?",
						  answer: ""
						},
						{ question: "What is the scope of the variable 'i': for (int i = 0; i<10;i++) {}",
						  answer: "The scope is within the for loop. It has not scope outside of the for loop."
						}
					  ];
	$scope.random = pick3( $scope.questions );
	$scope.show = false;
})
.directive( "questionsCsharp", function() {
	return {
		restrict: 'A',
		template: "<h1 style='text-align: center' ng-click='show=!show'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span><br/>Correct <input class='csharp-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "</div>"
	}
});