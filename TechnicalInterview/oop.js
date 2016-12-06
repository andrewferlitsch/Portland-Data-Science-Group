technical.controller( 'oopCtrl', function( $scope ) {
	$scope.subject 	= "OOP Design";
	$scope.questions = [{ question: "What is an abstract class?",
						  answer: ""
						},
						{ question: "What is data encapsulation?",
						  answer: ""
						},
						{ question: "Describe how public, protected and private scope work.",
						  answer: ""
						},
						{ question: "What is polymorphism? Give an example.",
						  answer: ""
						},
						{ question: "What is a Singleton design pattern?",
						  answer: ""
						},
						{ question: "What is a Factory design pattern?",
						  answer: ""
						}
					  ];
	$scope.random = pick3( $scope.questions );
	$scope.show = false;
})
.directive( "questionsOop", function() {
	return {
		restrict: 'A',
		template: "<h1 style='text-align: center' ng-click='show=!show'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span><br/>Correct <input class='oop-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "</div>"
	}
});