technical.controller( 'csharpCtrl', function( $scope ) {
	$scope.subject 	= "C##";
	$scope.questions = [{ question: "Name two ways the using statement is used.",
						  answer: "As a directive, it is used to create an alias for a namespace or to import types defined in other namespaces. " +
								  "As a statement, it defines a scope at the end of which an object will be disposed.",
						  rank: 1
						},
						{ question: "What is the scope of the variable 'i': for (int i = 0; i<10;i++) {}",
						  answer: "The scope is within the for loop. It has not scope outside of the for loop.",
						  rank: 1
						},
						{ question: "Describe how try, catch and finally work.",
						  answer: "",
						  rank: 2
						},
						{ question: "What is managed code?",
						  answer: "",
						  rank: 2
						},
						{ question: "What does a LINQ statement do?",
						  answer: "",
						  rank: 3
						}
					  ];
	$scope.random = pick3( $scope.questions );
	$scope.show = false;
})
.directive( "questionsCsharp", function() {
	return {
		restrict: 'A',
		template: "<a name='csharp'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#csharp\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better' name='csharp'>Suggest A Better Answer</button><br/>Correct <input class='csharp-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button onclick='Tally( \"csharp\")' class='w3-btn w3-green score' name='csharp'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='csharp'>Suggest a Question</button>" +
				  "</div>"
	}
});