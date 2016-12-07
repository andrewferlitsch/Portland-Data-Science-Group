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
						  answer: "Multiple inheritance of classes. For example, an OOP design for a vehicle might have a base class for wheels, " +
								  "and a base class for engine. The wheels base class may have derived classes for truck-wheels and passenger-wheels, " +
								  "and the engine base class may have derived classes for gas and diesel engine. A truck object might inherit the " +
								  "diesel engine and truck wheels derived classes, while a passenger vehicle might inherit the gas engine and passenger wheel " +
								  "derived classes."
						},
						{ question: "What is a Singleton design pattern?",
						  answer: "A design pattern where only one instance of an object (class) can be instantiated."
						},
						{ question: "What is a Factory design pattern?",
						  answer: "The Factory Method defines an interface for creating objects, but lets subclasses decide which classes to instantiate."
						}
					  ];
	$scope.random = pick3( $scope.questions );
	$scope.show = false;
})
.directive( "questionsOop", function() {
	return {
		restrict: 'A',
		template: "<a name='oop'/>" +
				  "<h1 class='w3-container w3-teal' ng-click='show=!show' onclick='location.href=\"#oop\"'>{{subject}} &#x21f5;</h1>" +
				  "<hr/>" +
				  "<div style='font-size: 20px;' ng-show='show'>" +
				  "<ul>" +
				  "	<li ng-repeat='question in random'> {{question.question}}<br/><br/>" +
				  "	<span class='answer'>{{question.answer}}</span> <button class='w3-btn w3-khaki w3-round w3-small better'>Suggest A Better Answer</button><br/>Correct <input class='oop-correct' type='checkbox'/><br/><br/>" +
				  "</ul>" +
				  "<button class='w3-btn w3-green score' name='oop'>Score</button>" +
				  "&nbsp;<button class='w3-btn w3-khaki w3-round w3-small question' name='oop'>Suggest a Question</button>" +
				  "</div>"
	}
});