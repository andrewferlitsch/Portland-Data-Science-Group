technical.controller( 'oopCtrl', function( $scope ) {
	$scope.subject 	= "OOP Design";
	$scope.questions = [{ question: "What is an abstract class?",
						  answer: "An abstract class is a class where one or more declared methods require an implementation. " +
								  "A derived (subclass, extended) that inherits the abstract class must implement all the methods " +
								  "that do not have an implementation. An abstract class cannot be instantiated."
						},
						{ question: "What is data encapsulation?",
						  answer: "Data encapsulation is where the data in a class is hidden from external objects. The data is only " +
								  "accessible by the class methods."
						},
						{ question: "Describe how public, protected and private scope work.",
						  answer: "public - data or method is accessible to all external objects. " +
								  "protected - data or method is accessible only by the class and objects that inherit the class. " +
								  "private - data or method is accessible only by the class."
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