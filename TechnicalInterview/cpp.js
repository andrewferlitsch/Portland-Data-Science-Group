technical.controller( 'cppCtrl', function( $scope ) {
	$scope.subject 	= "C++";
	$scope.questions = [{ question: "What is a virtual method?",
						  answer: "A method in a base class that may be overridden in a derived class."
						},
						{ question: "How is a method overloaded?",
						  answer: "Number and data types of arguments."
						},
						{ question: "Give an example of operator overloading.",
						  answer: "Box operator+(const Box& b)"
						},
						{ question: "What is the difference between a struct and class.",
						  answer: "Methods/data default to public in a struct."
						}
					  ];
	$scope.random = pick3( $scope.questions );
	$scope.show = false;
})
.directive( "questionsCpp", function() {
	return {
		restrict: 'A',
		template: "<a name='cpp'/>" +
				  "<h1 style='text-align: center' ng-click='show=!show' onclick='location.href=\"#cpp\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span><br/>Correct <input class='cpp-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "</div>"
	}
});